from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver
from home.models import Customer

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True, verbose_name='Người dùng')
    ROLE_CHOICES = [
        ('customer', 'Customer'),
        ('designer', 'Designer'),
        ('manager', 'Manager'),
        ('sales', 'Sales'),
        ('production', 'Production'),
        ('admin', 'Admin'),
    ]
    vai_tro = models.CharField(max_length=20, choices=ROLE_CHOICES, default='customer', verbose_name='Vai trò')

    def __str__(self):
        return self.user.username

    @property
    def tenNguoiDung(self):
        return f"{self.user.first_name} {self.user.last_name}".strip()

    @property
    def email(self):
        return self.user.email

@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()

@receiver(pre_save, sender=Profile)
def update_customer_profile_on_role_change(sender, instance, **kwargs):
    if instance.pk:
        previous_profile = Profile.objects.get(pk=instance.pk)
        if previous_profile.vai_tro != instance.vai_tro:
            if instance.vai_tro == 'customer':
                Customer.objects.get_or_create(user=instance.user)
            else:
                Customer.objects.filter(user=instance.user).delete()
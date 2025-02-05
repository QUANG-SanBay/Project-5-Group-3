from django.db import models
from home.models import Product
from django.contrib.auth.models import User
# Create your models here.
class Design (models.Model):
    name = models.OneToOneField(User,on_delete=models.SET_NULL, null = True, blank=False,verbose_name='Người dùng')
    def __str__(self):
        return self.name.username
class ThietKe(models.Model):
    nameProduct = models.OneToOneField(Product,on_delete=models.SET_NULL, max_length=200, null=True,verbose_name='Tên sản phẩm')
    def __str__(self):
        return self.nameProduct
from django.db import models
from django.contrib.auth.models import User
from home.models import Customer, Product, Product_Details, Oder

# Create your models here.
class Management (models.Model):
    name = models.OneToOneField(User,on_delete=models.SET_NULL, null = True, blank=False,verbose_name='Người dùng')
    def __str__(self):
        return self.name.username
class GiaVatLieu(models.Model):
    NAME_MATERIAL = [
        ('kimcuong', 'Kim Cương'),
        ('vang', 'Vàng'),
        ('bac', 'Bạc'),
        ('platinum', 'Platinum'),
        ('Cubic_Zirconia', 'Cubic Zirconia'),
        ('Cubic Zirconia', 'Cubic Zirconia'),
        ('Ruby', 'Ruby'),
        ('Emerald', 'Emerald'),
    ]
    # product = models.OneToOneField(Product, on_delete=models.CASCADE, verbose_name='Sản phẩm')
    name = models.CharField(max_length=200, null=True,choices=NAME_MATERIAL,verbose_name='Tên vật liệu')
    price = models.FloatField(verbose_name='Giá')
    def __str__(self):
        return self.name
class ChinhSach(models.Model):
    name = models.CharField(max_length=200, null=True,verbose_name='Tên chính sách')
    content = models.TextField(verbose_name='Nội dung')
    def __str__(self):
        return self.name
#chính sách
class Policy(models.Model):
    PAYMENT = 'PAYMENT'
    CANCELLATION = 'CANCELLATION'
    POLICY_TYPE_CHOICES = [
        (PAYMENT, 'Payment Policy'),
        (CANCELLATION, 'Cancellation Policy'),
    ]

    policy_type = models.CharField(max_length=20, choices=POLICY_TYPE_CHOICES)
    title = models.CharField(max_length=100)
    content = models.TextField()

    def __str__(self):
        return self.title
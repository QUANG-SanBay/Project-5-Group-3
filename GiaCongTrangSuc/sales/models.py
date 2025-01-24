from django.db import models
from django.contrib.auth.models import User
from home.models import Customer, Product, Product_Details, Oder

# Create your models here.
class Sales(models.Model):
    user = models.OneToOneField(User,on_delete=models.SET_NULL, null = True, blank=False,verbose_name='Người dùng')
    def __str__(self):
        return self.user.username

#bang bao gia
class BaoGia(models.Model):
    sales = models.ForeignKey(Sales, on_delete=models.CASCADE, verbose_name='Nhân viên báo giá')
    product = models.OneToOneField(Product, on_delete=models.CASCADE, verbose_name='Sản phẩm')
    weight = models.FloatField(verbose_name='Khối lượng')
    wage = models.IntegerField(verbose_name='Tiền công')
    date_created = models.DateTimeField(auto_now_add=True, null=True,verbose_name='Ngày tạo')
    def __str__(self):
        return self.product.name
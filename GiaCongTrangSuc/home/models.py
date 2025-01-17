from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class Customer(models.Model):
    user = models.OneToOneField(User,on_delete=models.SET_NULL, null = True, blank=False)
    name = models.CharField(max_length=200,null=True)
    email = models.CharField(max_length=200,null=True)

    def __str__(self):
        return self.name
class Product(models.Model):
    name = models.CharField(max_length=200,null=True)
    price = models.FloatField()
    image = models.ImageField(upload_to='products/', null=True, blank=True)  # Thêm trường hình ảnh
    def __str__(self):
        return self.name
class Oder(models.Model):
    customer = models.ForeignKey(Customer,on_delete=models.SET_NULL, blank=True,null=True)
    date_oder = models.DateTimeField(auto_now_add=True)
    compile = models.BooleanField(default=False,null=True,blank=False)
    transaction_id = models.CharField(max_length=200, null=True)
    def __str__(self):
        return str(self.id)
class OderItem(models.Model):
    product = models.ForeignKey(Product,on_delete=models.SET_NULL, blank=True,null=True)
    oder = models.ForeignKey(Oder,on_delete=models.SET_NULL, blank=True,null=True)
    quantity = models.IntegerField(default=0,null=True,blank=True) #so luong
    date_added = models.DateTimeField(auto_now_add=True)

class ShoppingAddress(models.Model):
    customer = models.ForeignKey(Customer,on_delete=models.SET_NULL, blank=True,null=True)
    oder = models.ForeignKey(Oder,on_delete=models.SET_NULL, blank=True,null=True)
    address = models.CharField(max_length=200,null=True)
    city = models.CharField(max_length=200,null=True)
    state = models.CharField(max_length=200,null=True)
    mobile = models.CharField(max_length=10,null=True)# tinh
    date_added = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return str(self.address)
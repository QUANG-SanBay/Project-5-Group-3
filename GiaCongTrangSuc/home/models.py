from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth.models import User

# Create your models here.
class Customer(models.Model):
    user = models.OneToOneField(User,on_delete=models.SET_NULL, null = True, blank=False)
    name = models.CharField(max_length=200,null=True)
    email = models.CharField(max_length=200,null=True)

    def __str__(self):
        return self.name
    

class Product(models.Model):
    PRODUCT_TYPES = [
        ('ring', 'Ring Product'),
        ('earring', 'Earring Product'),
        ('bracelet', 'Bracelet Product'),
        ('pendant', 'Pendant Product'),
        ('gemstone', 'Gemstone Product'),
        ('collection', 'Collection Product'),
    ]
    PRODUCT_DESIGN = [
        ('design_img', 'Design Image Product'),
        ('design_3d', 'Design 3D Product'),
    ]
    name = models.CharField(max_length=200, null=True)
    price = models.FloatField()
    image_1 = models.ImageField(upload_to='product', null=True, blank=True)
    image_2 = models.ImageField(upload_to='product', null=True, blank=True)
    image_3 = models.ImageField(upload_to='product', null=True, blank=True)
    image_4 = models.ImageField(upload_to='product', null=True, blank=True)
    type = models.CharField(max_length=20, choices=PRODUCT_TYPES, null=True, blank=True)
    design = models.CharField(max_length=20, choices=PRODUCT_DESIGN, null=True, blank=True)

    def __str__(self):
        return self.name

class Product_Ring(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Earring(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Bracelet(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Pendant(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Gemstone(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Colletion(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name # hiển thị tên collection thay vì tên product
class Product_DesginImg(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
class Product_Desgin3D(models.Model):
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, blank=True, null=True) # Đổi thành product
    def __str__(self):
        return self.product.name 
## Tạo các bảng liên quan
@receiver(post_save, sender=Product)
def create_related_product(sender, instance, created, **kwargs):
    if created:
        if instance.type == 'ring':
            Product_Colletion.objects.create(product=instance)
        elif instance.type == 'earring':
            Product_Earring.objects.create(product=instance)
        elif instance.type == 'bracelet':
            Product_Bracelet.objects.create(product=instance)
        elif instance.type == 'pendant':
            Product_Pendant.objects.create(product=instance)
        elif instance.type == 'gemstone':
            Product_Gemstone.objects.create(product=instance)
        elif instance.type == 'collection':
            Product_Colletion.objects.create(product=instance)
        if instance.design == 'design_img':
            Product_DesginImg.objects.create(product=instance)
        elif instance.design == 'design_3d':
            Product_Desgin3D.objects.create(product=instance)
class Product_Details(models.Model):
    Details_material = [
        ('diamond', 'Diamond'),
        ('gold', 'Gold'),
        ('silver', 'Silver'),
        ('platinum', 'Platinum'),
    ]
    Details_TrangSucDinhKem = [
        ('ring', 'Ring'),
        ('earring', 'Earring'),
        ('bracelet', 'Bracelet'),
        ('pendant', 'Pendant'),
    ]
    Details_Daphu = [
        ('Cubic Zirconia', 'Cubic Zirconia'),
        ('Moissanite', 'Moissanite'),
    ]
    Details_DaTam = [
        ('Ruby', 'Ruby'),
        ('Emerald', 'Emerald'),
    ]
    Details_Size =[
        ('16cm', '16cm'),
        ('17cm', '17cm'),
        ('18cm', '18cm'),
        ('19cm', '19cm'),
        ('20cm', '20cm'),
        ('21cm', '21cm'),
        ('22cm', '22cm'),
        ('23cm', '23cm'),
        ('24cm', '24cm'),
        ('25cm', '25cm'),
    ]
    product = models.ForeignKey(Product,on_delete=models.SET_NULL, blank=True,null=True)
    material = models.CharField(max_length=20, choices=Details_material, null=True, blank=True)
    TrangSucDinhKem = models.CharField(max_length=20, choices=Details_TrangSucDinhKem, null=True, blank=True)
    Daphu = models.CharField(max_length=20, choices=Details_Daphu, null=True, blank=True)
    DaTam = models.CharField(max_length=20, choices=Details_DaTam, null=True, blank=True)
    Size = models.CharField(max_length=20, choices=Details_Size, null=True, blank=True)
    Describe = models.TextField(null=True, blank=True)
    def __str__(self):
        return str(self.product.name)
class Oder(models.Model):
    customer = models.ForeignKey(Customer,on_delete=models.SET_NULL, blank=True,null=True)
    product = models.ForeignKey(Product,on_delete=models.SET_NULL, blank=True,null=True)
    date_oder = models.DateTimeField(auto_now_add=True)
    compile = models.BooleanField(default=False,null=True,blank=False)
    transaction_id = models.CharField(max_length=200, null=True)
    def __str__(self):
        return str(self.product.name)
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
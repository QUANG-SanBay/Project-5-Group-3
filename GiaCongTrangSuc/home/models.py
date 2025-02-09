from django.db import models
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth import get_user_model
from django.urls import reverse
from django.utils.module_loading import import_string

User = get_user_model()

class Customer(models.Model):
    SEX_LIST = [
        ('nam', 'Nam'),
        ('nu', 'Nữ'),
        ('khac', 'Khác'),
    ]
    user = models.OneToOneField(User, on_delete=models.SET_NULL, null=True, blank=False, verbose_name='Người dùng')
    address = models.CharField(max_length=200, null=True, blank=True, verbose_name='Địa chỉ')
    sex = models.CharField(max_length=20, choices=SEX_LIST, null=True, blank=True, verbose_name='Giới tính')
    phone = models.CharField(max_length=10, null=True, blank=True, verbose_name='Số điện thoại')

    def __str__(self):
        return f"{self.user.first_name} {self.user.last_name}".strip()

    def get_absolute_url(self):
        return reverse('customer_detail', args=[str(self.id)])

    @property
    def email(self):
        return self.user.email

@receiver(post_save, sender=User)
def create_customer_profile_on_user_creation(sender, instance, created, **kwargs):
    Profile = import_string('account.models.Profile')
    if created:
        if not hasattr(instance, 'profile'):
            Profile.objects.create(user=instance)
        if instance.profile.vai_tro == "customer":
            Customer.objects.create(user=instance)
            

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
    name = models.CharField(max_length=100, null=True, blank=True, verbose_name='Tên sản phẩm')
    price = models.FloatField(verbose_name='Giá')
    image_1 = models.ImageField(upload_to='product', null=True, blank=True,verbose_name='Hình ảnh chính')
    image_2 = models.ImageField(upload_to='product', null=True, blank=True, verbose_name='Hình ảnh 2')
    image_3 = models.ImageField(upload_to='product', null=True, blank=True, verbose_name='Hình ảnh 3')
    image_4 = models.ImageField(upload_to='product', null=True, blank=True, verbose_name='Hình ảnh 4')
    type = models.CharField(max_length=20, choices=PRODUCT_TYPES, null=True, blank=True, verbose_name='Loại sản phẩm')
    design = models.CharField(max_length=20, choices=PRODUCT_DESIGN, null=True, blank=True, verbose_name='Thiết kế')

    def __str__(self):
        return self.name
    #hàm tạo product detail khi tạo hoặc chỉnh product
    def get_absolute_url(self):
        return reverse('product_detail', args=[str(self.id)])
    #ham xoa product detail khi xoa product
    def delete(self, *args, **kwargs):
        self.product_details.delete()
        super().delete(*args, **kwargs)
    @property
    def formatted_price(self):
        return "{:,.2f}".format(self.price)## Tạo các bảng liên quan

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
    product = models.OneToOneField(Product,on_delete=models.SET_NULL, blank=True,null=True,verbose_name='Sản phẩm')
    material = models.CharField(max_length=20, choices=Details_material, null=True, blank=True,verbose_name='Chất liệu')
    TrangSucDinhKem = models.CharField(max_length=20, choices=Details_TrangSucDinhKem, null=True, blank=True,verbose_name='Trang sức đính kèm')
    Daphu = models.CharField(max_length=20, choices=Details_Daphu, null=True, blank=True,verbose_name='Đá phụ')
    DaTam = models.CharField(max_length=20, choices=Details_DaTam, null=True, blank=True,verbose_name='Đá tâm')
    Size = models.CharField(max_length=20, choices=Details_Size, null=True, blank=True, verbose_name='Size')
    Describe = models.TextField(null=True, blank=True)
    def __str__(self):
        return self.product.name
class Oder(models.Model):
    STATUS_ORDER =[
        ('DangXuLy', 'Đang xử lý'),
        ('DaTiepNhan', 'Đã tiếp nhận'),
        ('DangGiao', 'Đang giao'),
        ('DaGiao', 'Đã giao'),
    ]
    customer = models.ForeignKey(Customer,on_delete=models.SET_NULL, blank=True,null=True,verbose_name='Khách hàng')
    product = models.ForeignKey(Product,on_delete=models.SET_NULL, blank=True,null=True,verbose_name='Sản phẩm')
    date_oder = models.DateTimeField(auto_now_add=True,verbose_name='Ngày đặt hàng')
    status = models.CharField(max_length=20,choices=STATUS_ORDER, null=True, blank=True,verbose_name='Trạng thái')
    quantity = models.IntegerField(default=0,null=True,blank=True,verbose_name='Số lượng')
    def __str__(self):
        return str(self.product.name)
    
    
class Blog(models.Model):
    title = models.CharField(max_length=200, null=True,verbose_name='Tiêu đề')
    content = models.TextField(null=True, blank=True, verbose_name='Nội dung')
    image = models.ImageField(upload_to='blog', null=True, blank=True,verbose_name='Hình ảnh')
    date = models.DateTimeField(auto_now_add=True,verbose_name='Ngày đăng')
    def __str__(self):
        return str(self.title)
@receiver(post_save, sender=Product)
def create_or_update_product_details(sender, instance, created, **kwargs):
    """
    Hàm này được gọi mỗi khi một Product được tạo hoặc cập nhật.
    Nó sẽ tạo hoặc cập nhật Product_Details tương ứng.
    """
    product_details, created_details = Product_Details.objects.get_or_create(product_id=instance.id) 

@receiver(post_save, sender=Product)
def create_or_update_product_details(sender, instance, created, **kwargs):
    print(f"post_save signal received for Product ID: {instance.id}, Created: {created}") # Debug print
    product_details, created_details = Product_Details.objects.get_or_create(product_id=instance.id)
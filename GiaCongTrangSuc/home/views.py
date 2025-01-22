from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime
from .models import *
from .models import Product

# Create your views here.
def get_home(request):
    products = Product.objects.all()
    context={'products':products}
    products_with_product_image = Product.objects.exclude(product_image='')  # Lấy sản phẩm có hình ảnh `product_image`
    products_with_mau_image = Product.objects.exclude(mau_image='')  # Lấy sản phẩm có hình ảnh `mau_image`
    products_with_D_image = Product.objects.exclude(D_image='')  # Lấy sản phẩm có hình ảnh `D_image`
    products_with_product_image = Product.objects.exclude(product_image='')
    products_with_mau_image = Product.objects.exclude(mau_image='')
    products_with_D_image = Product.objects.exclude(D_image='')
    context = {
        'products_with_product_image': products_with_product_image,
        'products_with_mau_image': products_with_mau_image,
        'products_with_D_image': products_with_D_image,
}
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})  
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})

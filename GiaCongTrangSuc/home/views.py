from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from datetime import datetime
from .models import *

# Create your views here.
def product_detail_view(request, pk):
    product = get_object_or_404(Product, pk=pk)
    product_details = Product_Details.objects.get(product=product)

    if request.method == 'POST': # Check if form is submitted
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}") # Example response

    context = {'product': product, 'product_details': product_details}
    return render(request, 'home/datgiacong.html', context)
def get_home(request):
    products = Product.objects.all()
    products_colletion = Product.objects.filter(type='collection')
    products_design_img = Product.objects.filter(design='design_img')  # Sửa lại chỗ này
    context={'products':products , 
             'products_colletion':products_colletion,
            'products_design_img': products_design_img,
            }
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})
def get_inforUser(request):
    return render(request,'home/infor-user.html',{'timestamp': datetime.now().timestamp()})

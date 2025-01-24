from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime
from .models import *

# Create your views here.
def get_home(request):
    products = Product.objects.all()
    products_colletion = Product.objects.filter(type='collection')
    # products_colletion = Product_Colletion.objects.all()
    context={'products':products , 
             'products_colletion':products_colletion
            }
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})  
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})
def get_inforUser(request):
    return render(request,'home/infor-user.html',{'timestamp': datetime.now().timestamp()})

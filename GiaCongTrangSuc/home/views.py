from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime
from .models import *
from .models import Product

# Create your views here.
def get_home(request):
    products = Product.objects.all()
    context={'products':products}
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})  
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})

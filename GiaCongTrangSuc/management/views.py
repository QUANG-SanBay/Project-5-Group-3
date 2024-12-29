from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime

# Create your views here.
def get_management(request):
    return render(request,'management/manage.html',{'timestamp': datetime.now().timestamp()})
def get_yeucaubaogia(request):
    return render(request,'management/tiepnhanbaogia.html',{'timestamp': datetime.now().timestamp()})
def get_quanlydonhang(request):
    return render(request,'management/quanlydonhang.html',{'timestamp': datetime.now().timestamp()})
def get_thongke(request):
    return render(request,'management/thongke.html',{'timestamp': datetime.now().timestamp()})

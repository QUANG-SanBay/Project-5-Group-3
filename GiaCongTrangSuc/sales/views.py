from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime


# Create your views here.
def get_home(request):
    return render(request,'sales/home.html',{'timestamp': datetime.now().timestamp()})
def get_tiepnhangiacong(request):
    return render(request,'sales/tiepnhanyeucau.html',{'timestamp': datetime.now().timestamp()})

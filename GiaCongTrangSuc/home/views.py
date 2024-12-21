from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime

# Create your views here.
def get_home(request):
    return render(request,'home/home.html',{'timestamp': datetime.now().timestamp()})
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})

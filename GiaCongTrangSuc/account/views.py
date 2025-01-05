from django.shortcuts import render
from django.http import HttpResponse
from datetime import datetime

# Create your views here.
def get_login(request):
    return render(request,'account/login.html',{'timestamp': datetime.now().timestamp()})


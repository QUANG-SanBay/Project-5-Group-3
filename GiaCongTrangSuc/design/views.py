from django.shortcuts import render

# Create your views here.
def get_home(request):
    return render(request,'design/home.html')
def get_tiepnhanthietke(request):
    return render(request,'design/tiepnhanthietke.html')
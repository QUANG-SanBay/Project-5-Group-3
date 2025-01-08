from django.shortcuts import render

# Create your views here.
def get_home(request):
    return render(request,'production/home-pd.html')
def get_order(request):
    return render(request,'production/order.html')
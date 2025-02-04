from django.shortcuts import render, redirect
from django.http import HttpResponse
from datetime import datetime
from .models import Order

# Create your views here.
def get_home(request):
    return render(request, 'sales/home.html', {'timestamp': datetime.now().timestamp()})

def get_tiepnhangiacong(request):
    if request.method == 'POST':
        customer_id = request.POST['customer_id']
        product_id = request.POST['product_id']
        quantity = request.POST['quantity']
        status = 'Đang chờ xác nhận'
        order = Order(customer_id=customer_id, product_id=product_id, quantity=quantity, status=status)
        order.save()
        return redirect('homeSales')
    return render(request, 'sales/tiepnhanyeucau.html', {'timestamp': datetime.now().timestamp()})

# Thêm view mới để xử lý đơn hàng
def create_order(request):
    if request.method == 'POST':
        customer_id = request.POST['customer_id']
        product_id = request.POST['product_id']
        quantity = request.POST['quantity']
        status = 'Đang chờ xác nhận'
        order = Order(customer_id=customer_id, product_id=product_id, quantity=quantity, status=status)
        order.save()
        return redirect('homeSales')
    return render(request, 'sales/create_order.html', {'timestamp': datetime.now().timestamp()})

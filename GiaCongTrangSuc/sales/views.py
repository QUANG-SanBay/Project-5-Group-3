from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from datetime import datetime
from home.models import Oder 


# Create your views here.
def get_home(request):
    pending_orders = Oder.objects.filter(status='DangXuLy') # Get orders with 'DangXuLy' status
    context = {'pending_orders': pending_orders, 'timestamp': datetime.now().timestamp()}
    return render(request,'sales/home.html', context)
def get_order_detail_sales(request, order_id):
    order = get_object_or_404(Oder, id=order_id)
    product_images = []
    if order.product:
        # Nếu đơn có sản phẩm, lấy ảnh của product (image_1 đến image_4)
        for i in range(1, 5):
            image_field_name = f'image_{i}'
            image_field = getattr(order.product, image_field_name, None)
            if image_field:
                product_images.append(image_field.url)
    context = {
        'order': order,
        'timestamp': datetime.now().timestamp(),
        'product_images': product_images
    }
    return render(request, 'sales/tiepnhanyeucau.html', context)
def get_tiepnhangiacong(request):
    return render(request,'sales/tiepnhanyeucau.html',{'timestamp': datetime.now().timestamp()})

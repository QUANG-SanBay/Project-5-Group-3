from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from datetime import datetime
from home.models import Oder 


# Create your views here.
def get_home(request):
    pending_orders = Oder.objects.filter(status='DangXuLy') # Get orders with 'DangXuLy' status
    context = {'pending_orders': pending_orders, 'timestamp': datetime.now().timestamp()}
    return render(request,'sales/home.html', context)
def get_order_detail_sales(request, order_id):  # Renamed and accepts order_id
    order = get_object_or_404(Oder, id=order_id)  # Fetch specific Oder object

    # Prepare a list of image URLs
    product_images = []
    for i in range(1, 5):  # Check for image_1 to image_4
        image_field_name = f'image_{i}'
        image_field = getattr(order.product, image_field_name, None) # Get image field, default None if not exist
        if image_field:
            product_images.append(image_field.url) # Add URL to the list

    context = {'order': order, 'timestamp': datetime.now().timestamp(), 'product_images': product_images} # Add product_images to context
    return render(request, 'sales/tiepnhanyeucau.html', context)  # Pass order to template
def get_tiepnhangiacong(request):
    return render(request,'sales/tiepnhanyeucau.html',{'timestamp': datetime.now().timestamp()})

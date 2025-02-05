from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from datetime import datetime
from .models import *
from account.models import Profile
from django.contrib import messages # Import messages framework

# Create your views here.
def product_detail_view(request, pk):
    product = get_object_or_404(Product, pk=pk)
    product_details = Product_Details.objects.get(product=product)

    if request.method == 'POST': # Check if form is submitted
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}") # Example response

    context = {'product': product, 'product_details': product_details}
    return render(request, 'home/datgiacong.html', context)

def get_home(request):
    products = Product.objects.all()
    products_colletion = Product.objects.filter(type='collection')
    products_design_img = Product.objects.filter(design='design_img')  # Sửa lại chỗ này
    context={'products':products , 
             'products_colletion':products_colletion,
            'products_design_img': products_design_img,
            }
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})

def get_inforUser(request):
    if request.method == 'POST': # Check if it's a POST request (form submission)
        if request.user.is_authenticated:
            profile = Profile.objects.get(user=request.user)
            try:
                customer = Customer.objects.get(user=request.user)
            except Customer.DoesNotExist:
                customer = None

            # Update Profile information
            fullname = request.POST.get('fullname')
            if fullname:
                parts = fullname.split() # Simple split for first and last name
                profile.user.first_name = parts[0] if parts else "" # Update first name
                profile.user.last_name = parts[-1] if len(parts) > 1 else "" # Update last name
                profile.user.save() # Save User model for name changes

            # Update Customer information
            if customer:
                customer.phone = request.POST.get('phone')
                customer.sex = request.POST.get('gender')
                customer.save() # Save Customer model

            messages.success(request, 'Thông tin của bạn đã được cập nhật thành công!') # Success message
            return redirect('inforUser') # Redirect to refresh the page

    # If it's a GET request (initial page load) or after successful POST redirect
    if request.user.is_authenticated:
        profile = Profile.objects.get(user=request.user)
        try:
            customer = Customer.objects.get(user=request.user)
        except Customer.DoesNotExist:
            customer = None
        context = {
            'profile': profile,
            'customer': customer,
            'timestamp': datetime.now().timestamp()
        }
        return render(request, 'home/infor-user.html', context)
    else:
        return HttpResponse("Bạn cần đăng nhập để xem thông tin người dùng.")

def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})
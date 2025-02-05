from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django import template
from datetime import datetime
from .models import *

# Create your views here.
def product_detail_view(request, pk):
    product = get_object_or_404(Product, pk=pk)
    product_details = Product_Details.objects.get(product=product)

    if request.method == 'POST': # Check if form is submitted
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}") # Example response

    context = {'product': product, 'product_details': product_details}
    return render(request, 'home/datgiacong.html', context)
def blog_detail_view(request, pk):
    blog = get_object_or_404(Blog, pk=pk)
    context = {'blog': blog}
    return render(request, 'home/blog.html', context)
def get_home(request):
    products = Product.objects.all()
    products_colletion = Product.objects.filter(type='collection')
    products_design_img = Product.objects.filter(design='design_img')  # Sửa lại chỗ này
    products_design_3d = Product.objects.filter(design='design_3d')  # Sửa lại chỗ này
    Blogs = Blog.objects.all()
    context={'products':products , 
             'products_colletion':products_colletion,
            'products_design_img': products_design_img,
            'products_design_3d': products_design_3d,
            'Blogs': Blogs
            }
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})
def get_blog(request):
    return render(request,'home/blog.html',{'timestamp': datetime.now().timestamp()})
def get_yeucaugiacong(request):
    return render(request,'home/datgiacong.html',{'timestamp': datetime.now().timestamp()})
def get_giacongtheoyeucau_page(request):
    if request.method == 'POST':  # Check if form is submitted
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}")  # Example response

    # If it's a GET request (initial page load), just render the template
    return render(request, 'home/giacongtheoyeucau.html', {'timestamp': datetime.now().timestamp()})
def get_inforUser(request):
    return render(request,'home/infor-user.html',{'timestamp': datetime.now().timestamp()})
def submit_giacongtheoyeucau_form(request):
    if request.method == 'POST':
        # Get data from the form
        product_type = request.POST.get('name') # 'name' in form is "Loại trang sức"
        material = request.POST.get('chatlieu') # 'chatlieu' in form is "Chất liệu"
        attached = request.POST.get('attached')
        daphu = request.POST.get('Daphu')
        datam = request.POST.get('Datam')
        size = request.POST.get('size')
        yeucaukhac = request.POST.get('yeucaukhac')

        # Create a Product object (since Oder needs a Product) - Minimal Product for now
        product = Product.objects.create(
            name=f"Yêu cầu gia công - {product_type}", # Simple name
            type=product_type, # Store the type
            price=0.00
        )

        # Get the Product_Details instance that was created by the signal
        product_details = Product_Details.objects.get(product=product)

        # Update the Product_Details instance with form data
        product_details.material = material
        product_details.TrangSucDinhKem = attached
        product_details.Daphu = daphu
        product_details.DaTam = datam
        product_details.Size = size
        product_details.Describe = yeucaukhac
        product_details.save() # Save the updated Product_Details

        # Create an Oder object
        Oder.objects.create(
            customer=None, # No customer for now
            product=product,
            quantity=1, # Default quantity
            status='DangXuLy' # Set status to 'Đang xử lý' (Processing)
        )

        return redirect('giacong_theo_yeu_cau') # Redirect back to the form page for now

    # If it's not a POST request, render the form page
    return render(request, 'home/giacongtheoyeucau.html', {'timestamp': datetime.now().timestamp()})


register = template.Library()
@register.filter(name='getattribute')
def getattribute(value, arg):
    """Gets an attribute of a value dynamically from a string name"""

    if hasattr(value, str(arg)):
        return getattr(value, arg)
    elif isinstance(value, dict) and arg in value:
        return value[arg]
    else:
        return None
from django.shortcuts import render, get_object_or_404, redirect
from django.http import HttpResponse
from django import template
from datetime import datetime
from .models import *
from account.models import Profile
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# from django.contrib.auth.decorators import login_required


# Create your views here.
def product_detail_view(request, pk):
    product = get_object_or_404(Product, pk=pk)
    product_details = Product_Details.objects.get(product=product)

    if request.method == 'POST':
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}")

    context = {'product': product, 'product_details': product_details}
    return render(request, 'home/datgiacong.html', context)

def blog_detail_view(request, pk):
    blog = get_object_or_404(Blog, pk=pk)
    context = {'blog': blog}
    return render(request, 'home/blog.html', context)
# @login_required
def get_home(request):
    products = Product.objects.all()
    products_colletion = Product.objects.filter(type='collection')
    products_design_img = Product.objects.filter(design='design_img')
    products_design_3d = Product.objects.filter(design='design_3d')
    Blogs = Blog.objects.all()
    context = {
        'products': products,
        'products_colletion': products_colletion,
        'products_design_img': products_design_img,
        'products_design_3d': products_design_3d,
        'Blogs': Blogs
    }
    return render(request, 'home/home.html', {**context, 'timestamp': datetime.now().timestamp()})

def get_blog(request):
    return render(request, 'home/blog.html', {'timestamp': datetime.now().timestamp()})

def get_yeucaugiacong(request):
    return render(request, 'home/datgiacong.html', {'timestamp': datetime.now().timestamp()})

def get_giacongtheoyeucau_page(request):
    if request.method == 'POST':
        selected_size = request.POST.get('size')
        return HttpResponse(f"Size selected: {selected_size}")

    return render(request, 'home/giacongtheoyeucau.html', {'timestamp': datetime.now().timestamp()})

def get_inforUser(request):
    return render(request, 'home/infor-user.html', {'timestamp': datetime.now().timestamp()})

def submit_giacongtheoyeucau_form(request):
    if request.method == 'POST':
        product_type = request.POST.get('name')
        material = request.POST.get('chatlieu')
        attached = request.POST.get('attached')
        daphu = request.POST.get('Daphu')
        datam = request.POST.get('Datam')
        size = request.POST.get('size')
        yeucaukhac = request.POST.get('yeucaukhac')

        product = Product.objects.create(
            name=f"Yêu cầu gia công - {product_type}",
            type=product_type,
            price=0.00
        )

        product_details = Product_Details.objects.get(product=product)
        product_details.material = material
        product_details.TrangSucDinhKem = attached
        product_details.Daphu = daphu
        product_details.DaTam = datam
        product_details.Size = size
        product_details.Describe = yeucaukhac
        product_details.save()

        Oder.objects.create(
            customer=None,
            product=product,
            quantity=1,
            status='DangXuLy'
        )

        return redirect('giacong_theo_yeu_cau')

    return render(request, 'home/giacongtheoyeucau.html', {'timestamp': datetime.now().timestamp()})

register = template.Library()
@register.filter(name='getattribute')
def getattribute(value, arg):
    if hasattr(value, str(arg)):
        return getattr(value, arg)
    elif isinstance(value, dict) and arg in value:
        return value[arg]
    else:
        return None

def get_inforUser(request):
    if request.method == 'POST':
        if request.user.is_authenticated:
            profile = Profile.objects.get(user=request.user)
            try:
                customer = Customer.objects.get(user=request.user)
            except Customer.DoesNotExist:
                customer = None

            fullname = request.POST.get('fullname')
            if fullname:
                parts = fullname.split()
                profile.user.first_name = parts[0] if parts else ""
                profile.user.last_name = parts[-1] if len(parts) > 1 else ""
                profile.user.save()

            if customer:
                customer.phone = request.POST.get('phone')
                customer.sex = request.POST.get('gender')
                customer.save()

            messages.success(request, 'Thông tin của bạn đã được cập nhật thành công!')
            return redirect('inforUser')

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

# def get_category(request):
#     products = Product.objects.all()
#     products_colletion = Product.objects.filter(type='collection')
#     products_Nhan = Product.objects.filter(type='ring')
#     products_Vongtay = Product.objects.filter(type='Bracelet')
#     products_BongTai = Product.objects.filter(type='earring')
#     products_MatDaycChuyen = Product.objects.filter(type='pendant')
#     products_ĐaQuy = Product.objects.filter(type='gemstone')
#     context = {
#         'products': products,
#         'products_colletion': products_colletion,
#         'products_Nhan': products_Nhan,
#         'products_Vongtay': products_Vongtay,
#         'products_BongTai': products_BongTai,
#         'products_MatDaycChuyen': products_MatDaycChuyen,
#         'products_ĐaQuy': products_ĐaQuy
#     }
#     return render(request, 'home/category.html', {**context, 'timestamp': datetime.now().timestamp()})
def get_category(request, category_slug):
    mapping = {
        'Nhan': 'ring',
        'BongTai': 'earring',
        'VongTay': 'Bracelet',
        'MatDayChuyen': 'pendant',
        'DaQuy': 'gemstone',
        'TatCa': None,  # Tất cả sản phẩm
    }
    product_type = mapping.get(category_slug)
    if product_type:
        products = Product.objects.filter(type=product_type)
    else:
        products = Product.objects.all()
    
    context = {'products': products, 'timestamp': datetime.now().timestamp()}
    return render(request, 'home/category.html', context)
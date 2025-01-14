from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import messages

def get_signUp(request):
    if request.method == 'POST':
        full_name = request.POST.get('full-name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        password_confirmation = request.POST.get('password-confirmation')

        # Tạo biến context để truyền thông báo lỗi cho riêng trang đăng ký
        context = {
            'form_name_error': None,
            'form_email_error': None,
            'form_password_error': None,
            'form_password_confirmation_error': None,
            'request': request,  # Truyền request để giữ giá trị các trường
        }

        # Kiểm tra Họ và Tên không được để trống
        if not full_name:
            context['form_name_error'] = 'Họ và Tên không được để trống .'
            return render(request, 'account/signUp.html', context)

        # Kiểm tra email đã tồn tại
        if User.objects.filter(email=email).exists():
            context['form_email_error'] = 'Email đã được sử dụng.'
            return render(request, 'account/signUp.html', context)

        # Kiểm tra mật khẩu không được để trống
        if not password:
            context['form_password_error'] = 'Mật khẩu không được để trống.'
            return render(request, 'account/signUp.html', context)

        # Kiểm tra mật khẩu khớp
        if password != password_confirmation:
            context['form_password_confirmation_error'] = 'Mật khẩu nhập lại không khớp.'
            return render(request, 'account/signUp.html', context)

        # Tạo tài khoản người dùng
        user = User.objects.create_user(
            username=email.split('@')[0],  # Tạo username từ email
            email=email,
            password=password
        )
        user.first_name = full_name  # Gán họ và tên
        user.save()

        # Thông báo tạo tài khoản thành công
        messages.success(request, 'Tài khoản đã được tạo thành công! Vui lòng đăng nhập.')
        return redirect('login')  # Chuyển hướng tới trang đăng nhập

    # GET request: Render form đăng ký trống
    return render(request, 'account/signUp.html')



def get_login(request):
    context = {}
    return render(request,'account/login.html',context)
from datetime import datetime
from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import messages

def get_signUp(request):
    if request.method == 'POST':
        full_name = request.POST.get('full-name')
        email = request.POST.get('email')
        password = request.POST.get('password')
        password_confirmation = request.POST.get('password-confirmation')

        # Kiểm tra mật khẩu khớp
        if password != password_confirmation:
            messages.error(request, 'Mật khẩu không khớp.')
            return render(request, 'account/signUp.html')

        # Kiểm tra email đã tồn tại
        if User.objects.filter(email=email).exists():
            messages.error(request, 'Email đã được sử dụng.')
            return render(request, 'account/signUp.html')

        # Tạo tài khoản người dùng
        user = User.objects.create_user(
            username=email.split('@')[0],
            email=email,
            password=password
        )
        user.first_name = full_name
        user.save()

        # Không tự động đăng nhập, chỉ tạo tài khoản và thông báo thành công
        messages.success(request, 'Tài khoản đã được tạo thành công! Vui lòng đăng nhập.')
        return redirect('login')  # Điều hướng tới trang đăng nhập

    return render(request, 'account/signUp.html')


def get_login(request):
    context = {}
    return render(request,'account/login.html',context)
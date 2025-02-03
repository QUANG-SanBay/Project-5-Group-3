from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('login/',views.get_login,name='login'),
    path('logout/',views.get_logout,name='logout'),
    path('signup/',views.get_signUp,name='signUp'),
    path('', views.get_home, name='home'),  # Giả sử bạn có một view home()
]

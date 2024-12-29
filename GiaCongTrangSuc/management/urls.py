from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_management,name='homeManagement'),
    path('yeucaubaogia/',views.get_yeucaubaogia,name='yeucaubaogia'),
    path('quanlydonhang/',views.get_quanlydonhang,name='quanlydonhang'),
    path('thongke/',views.get_thongke,name='thongke'),
]

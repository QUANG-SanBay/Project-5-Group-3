from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_management,name='homeManagement'),
    path('yeucaubaogia/',views.get_yeucaubaogia,name='yeucaubaogia'),
    path('quanlydonhang/',views.get_quanlydonhang,name='quanlydonhang'),
    path('thongke/',views.get_thongke,name='thongke'),
    
    #chính sách
    path('policies/', views.policy_list, name='policy_list'),
    path('policies/<int:pk>/', views.policy_detail, name='policy_detail'),
    path('policies/new/', views.policy_create, name='policy_create'),
    path('policies/<int:pk>/edit/', views.policy_edit, name='policy_edit'),
    
    #gia vat lieu
    path('gia-vat-lieu/', views.gia_vat_lieu_list, name='gia_vat_lieu_list'),
    path('gia-vat-lieu/<int:pk>/', views.gia_vat_lieu_detail, name='gia_vat_lieu_detail'),
    path('gia-vat-lieu/new/', views.gia_vat_lieu_create, name='gia_vat_lieu_create'),
    path('gia-vat-lieu/<int:pk>/edit/', views.gia_vat_lieu_edit, name='gia_vat_lieu_edit'),
]

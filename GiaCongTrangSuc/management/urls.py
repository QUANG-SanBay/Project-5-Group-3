from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_management,name='homeManagement'),
    path('yeucaubaogia/',views.get_yeucaubaogia,name='yeucaubaogia'),
    path('quanlydonhang/',views.get_quanlydonhang,name='quanlydonhang'),
    path('thongke/',views.get_thongke,name='thongke'),
    
    path('policies/', views.policy_list, name='policy_list'),
    path('policies/<int:pk>/', views.policy_detail, name='policy_detail'),
    path('policies/new/', views.policy_create, name='policy_create'),
    path('policies/<int:pk>/edit/', views.policy_edit, name='policy_edit'),
]

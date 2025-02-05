from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
   path('',views.get_home,name='homeSales'),
    path('yeucaugiacong/<int:order_id>/', views.get_order_detail_sales, name='order_detail_sales'),
]

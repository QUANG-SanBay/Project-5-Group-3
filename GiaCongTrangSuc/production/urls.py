from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_home,name = 'home_prod'),
    path('order/',views.get_order, name = 'tiepnhan_prod'),
]

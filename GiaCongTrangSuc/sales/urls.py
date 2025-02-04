from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('', views.get_home, name='homeSales'),
    path('yeucaugiacong/', views.get_tiepnhangiacong, name='yeucaugiacongSales'),
    path('create_order/', views.create_order, name='create_order'),
]

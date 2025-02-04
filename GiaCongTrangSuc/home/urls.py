from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_home,name='home'),
    path('datgiacong/<int:pk>/', views.product_detail_view, name='product_detail'), # Add this line
    path('datgiacong/', views.get_yeucaugiacong, name='datgiacong'), # Keep this line if you still need it for general datgiacong page
    path('inforUser/', views.get_inforUser, name='inforUser'),
]

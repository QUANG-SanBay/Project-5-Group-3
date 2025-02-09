from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_home,name='home'),
    path('datgiacong/<int:pk>/', views.product_detail_view, name='product_detail'), # Add this line
    path('datgiacong/', views.get_yeucaugiacong, name='datgiacong'), # Keep this line if you still need it for general datgiacong page
    path('giacong-theo-yeu-cau/', views.get_giacongtheoyeucau_page, name='giacong_theo_yeu_cau'),
    path('giacong-theo-yeu-cau/submit/', views.submit_giacongtheoyeucau_form, name='submit_giacong_theo_yeu_cau'),
    path('inforUser/', views.get_inforUser, name='inforUser'),
    path('blog/', views.get_blog, name='blog'),
    path('blog/<int:pk>/', views.blog_detail_view, name='blog_detail'), # Add this line
    path('category/<str:category_slug>/', views.get_category, name='category'),
]
from django.contrib import admin
from django.urls import path
from design import views

urlpatterns = [
    path('',views.get_home,name = 'home_design'),
    path('thietke3d',views.get_tiepnhanthietke, name = 'tiepnhan_design'),
]

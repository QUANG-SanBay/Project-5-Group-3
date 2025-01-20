from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_home,name='home'),
    path('datgiacong/',views.get_yeucaugiacong,name='datgiacong'),
    path('inforUser/',views.get_inforUser,name='inforUser'),
]

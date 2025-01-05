from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    path('',views.get_login,name='login'),
    path('signup/',views.get_signUp,name='signUp'),
    # path('datgiacong/',views.get_yeucaugiacong,name='datgiacong'),
]

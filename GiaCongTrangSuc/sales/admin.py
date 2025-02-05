from django.contrib import admin
from .models import *
# from .models import Oder
# Register your models here.
# class OderAdmin(admin.ModelAdmin):
#     list_display = ('id', 'product', 'customer', 'date_oder', 'status', 'quantity')
#     list_filter = ('status', 'date_oder')
#     search_fields = ('product__name', 'customer__user__first_name', 'customer__user__last_name', 'customer__phone')
#     ordering = ('-date_oder',)
#     readonly_fields = ('date_oder', 'customer', 'product', 'quantity')
#     fields = ('status',)
admin.site.register(Sales)
admin.site.register(BaoGia)
# admin.site.register(Oder, OderAdmin)
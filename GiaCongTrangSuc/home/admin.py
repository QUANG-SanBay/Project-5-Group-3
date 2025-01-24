from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Customer)
admin.site.register(Product)
admin.site.register(Product_Details)
admin.site.register(Oder)
# admin.site.register(OderItem)
# admin.site.register(ShoppingAddress)
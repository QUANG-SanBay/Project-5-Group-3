from django.contrib import admin
from .models import VaiTro, NguoiDung

# Tùy chỉnh giao diện Admin cho VaiTro
class VaiTroAdmin(admin.ModelAdmin):
    list_display = ('id', 'ten_vai_tro')  # Các trường hiển thị trong danh sách
    search_fields = ('ten_vai_tro',)  # Tìm kiếm theo tên vai trò

# Tùy chỉnh giao diện Admin cho NguoiDung
class NguoiDungAdmin(admin.ModelAdmin):
    list_display = ('id_nguoi_dung', 'ten_nguoi_dung', 'email', 'vai_tro')  # Các trường hiển thị trong danh sách
    search_fields = ('ten_nguoi_dung', 'email')  # Tìm kiếm theo tên người dùng và email
    list_filter = ('vai_tro',)  # Lọc theo vai trò
    list_per_page = 10  # Số lượng bản ghi hiển thị trên mỗi trang

# Đăng ký các model với Django Admin
admin.site.register(VaiTro, VaiTroAdmin)
admin.site.register(NguoiDung, NguoiDungAdmin)

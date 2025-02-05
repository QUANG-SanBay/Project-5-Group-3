from django.db import models

# Model VaiTro
class VaiTro(models.Model):
    ten_vai_tro = models.CharField("Tên vai trò", max_length=50)

    def __str__(self):
        return self.ten_vai_tro

# Model NguoiDung
class NguoiDung(models.Model):
    id_nguoi_dung = models.BigAutoField("ID", primary_key=True)
    ten_nguoi_dung = models.CharField("Tên người dùng", max_length=50)
    email = models.EmailField("Email", max_length=254)
    mat_khau = models.CharField("Mật khẩu", max_length=128)
    vai_tro = models.ForeignKey(VaiTro, on_delete=models.CASCADE)

    def __str__(self):
        return self.email
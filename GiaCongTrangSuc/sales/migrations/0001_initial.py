# Generated by Django 4.2.19 on 2025-02-13 07:46

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('home', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Sales',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user', models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='Người dùng')),
            ],
        ),
        migrations.CreateModel(
            name='BaoGia',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('weight', models.FloatField(verbose_name='Khối lượng')),
                ('wage', models.IntegerField(verbose_name='Tiền công')),
                ('date_created', models.DateTimeField(auto_now_add=True, null=True, verbose_name='Ngày tạo')),
                ('product', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='home.product', verbose_name='Sản phẩm')),
                ('sales', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='sales.sales', verbose_name='Nhân viên báo giá')),
            ],
        ),
    ]

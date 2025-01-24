# Generated by Django 5.0.10 on 2025-01-24 06:48

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('home', '0003_blog_alter_customer_address_alter_customer_phone_and_more'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Production',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='Người dùng')),
            ],
        ),
        migrations.CreateModel(
            name='TienDoSanXuat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nameProduct', models.OneToOneField(max_length=200, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.product', verbose_name='Tên sản phẩm')),
            ],
        ),
    ]

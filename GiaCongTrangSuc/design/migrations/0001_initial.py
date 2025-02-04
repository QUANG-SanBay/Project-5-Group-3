# Generated by Django 5.0.11 on 2025-02-04 04:56

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('home', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Design',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='Người dùng')),
            ],
        ),
        migrations.CreateModel(
            name='ThietKe',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nameProduct', models.OneToOneField(max_length=200, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.product', verbose_name='Tên sản phẩm')),
            ],
        ),
    ]

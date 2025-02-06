# Generated by Django 5.0.10 on 2025-02-05 09:49

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Profile',
            fields=[
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL, verbose_name='Người dùng')),
                ('vai_tro', models.CharField(choices=[('customer', 'Customer'), ('designer', 'Designer'), ('manager', 'Manager'), ('sales', 'Sales'), ('production', 'Production')], default='customer', max_length=20, verbose_name='Vai trò')),
            ],
        ),
    ]

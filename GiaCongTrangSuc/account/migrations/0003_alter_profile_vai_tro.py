# Generated by Django 5.0.10 on 2025-02-09 14:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('account', '0002_alter_profile_vai_tro'),
    ]

    operations = [
        migrations.AlterField(
            model_name='profile',
            name='vai_tro',
            field=models.CharField(choices=[('customer', 'Customer'), ('designer', 'Designer'), ('manager', 'Manager'), ('sales', 'Sales'), ('production', 'Production'), ('admin', 'Admin')], max_length=20, verbose_name='Vai trò'),
        ),
    ]

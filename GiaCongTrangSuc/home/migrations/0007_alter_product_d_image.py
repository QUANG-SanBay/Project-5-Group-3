# Generated by Django 5.0.10 on 2025-01-22 04:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0006_product_d_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='D_image',
            field=models.ImageField(blank=True, null=True, upload_to='home/static/home/img/D'),
        ),
    ]

# Generated by Django 3.1.1 on 2021-04-10 11:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0011_order_status'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(upload_to='static/images/'),
        ),
    ]

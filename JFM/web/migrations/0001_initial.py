# Generated by Django 3.1.5 on 2021-04-26 06:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=140)),
                ('imagen', models.ImageField(blank=True, upload_to='product', verbose_name='Imagen')),
                ('info', models.CharField(max_length=140)),
            ],
        ),
    ]

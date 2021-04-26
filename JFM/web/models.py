from django.db import models
from django.utils.translation import gettext

# Create your models here.
class Producto(models.Model):
    nombre = models.CharField(max_length=140)
    imagen = models.ImageField(gettext("Imagen"), upload_to='product', blank=True)
    info = models.CharField(max_length=140)

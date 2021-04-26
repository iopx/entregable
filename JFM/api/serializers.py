from rest_framework import serializers
from web.models import Producto

class ProductoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model=Producto
        fields=['id','nombre','imagen','info']
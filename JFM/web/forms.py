from django.forms import ModelForm
from web.models import Producto

# Create the form class.
class ProductoModelForm(ModelForm):
    class Meta:
        model = Producto
        fields = "__all__"

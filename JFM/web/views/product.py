from django.views import View
from django.shortcuts import render, redirect
from web.models import Producto
from web.forms import ProductoModelForm


class ProductoNuevoView(View):
    template_name = 'producto.nuevo.html'

    def get(self, request):
        form = ProductoModelForm()
        data = {
            'form': form
        }
        return render(request, self.template_name, data)
    def post(self, request):
        form = ProductoModelForm(request.POST, request.FILES or None)
        if form.is_valid():
            r = form.save()
            return redirect('/')
        data = { 'form': form }
        return render(request, self.template_name, data)

class ProductoView(View):
    template_name = 'producto.info.html'

    def get(self, request, id):
        producto = Producto.objects.get(id=id)
        data = {
            'producto' : producto
        }
        return render(request, self.template_name, data)

from django.views import View
from django.shortcuts import render
from web.models import Producto


class IndexView(View):
    template_name = 'index.html'

    def get(self, request):
        productos = Producto.objects.all()
        data = {
            'productos' : productos
        }
        return render(request, self.template_name,data)
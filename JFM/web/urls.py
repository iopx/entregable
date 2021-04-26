from django.urls import path
from web.views.index import IndexView
from web.views.login import LoginView
from web.views.logout import LogoutView
from web.views.product import ProductoNuevoView, ProductoView

urlpatterns = [
    path('login', LoginView.as_view()),
    path('logout', LogoutView.as_view()),
    path('', IndexView.as_view()),
    path('nuevo', ProductoNuevoView.as_view()),
    path('producto/<id>', ProductoView.as_view()),
]
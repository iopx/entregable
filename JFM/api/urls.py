from django.contrib import admin
from django.urls import path,include
from rest_framework import routers

from rest_framework_jwt.views import obtain_jwt_token
from rest_framework_jwt.views import refresh_jwt_token
from rest_framework_jwt.views import verify_jwt_token

from api import views

router = routers.DefaultRouter()
router.register(r'products',views.ProductoViewSet)

urlpatterns = [
    path(r'auth/login', obtain_jwt_token),
    path(r'auth/refresh-token', refresh_jwt_token),
    path(r'auth/verify-token', verify_jwt_token),
    path(r'',include(router.urls)),
]
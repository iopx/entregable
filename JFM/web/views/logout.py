from django.views import View
from django.shortcuts import redirect
from django.contrib.auth import logout


class LogoutView(View):
    '''
    Pagina de cierre de sesion
    '''

    def get(self, request):
        logout(request)
        return redirect('/')

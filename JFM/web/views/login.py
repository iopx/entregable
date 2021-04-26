from django.views import View
from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login


class LoginView(View):
    '''
    Pagina de inicio de sesion
    '''
    template_name = 'login.html'

    def get(self, request):
        return render(request, self.template_name, {})

    def post(self, request):
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(username=username,  password=password)
        if user is not None:
            login(request, user)
            return redirect('/')
        else :
            data = {
                'error': True
            }
            return render(request, self.template_name, data)
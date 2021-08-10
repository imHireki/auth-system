from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import exceptions

import requests
import ast 


class LoginView(APIView):
    def post(self, *args, **kwargs):
        data = self.request.data
        email = data.get('email')
        password = data.get('password')

        if not email or not password:
            raise exceptions.ValidationError
        
        redir = requests.post(
            url='http://127.0.0.1:8000/auth/jwt/create/',
            data={
                'email': email,
                'password': password,
            }
        )
        
        if not redir.status_code == 200:
            raise exceptions.ValidationError
        
        str_tokens = redir.__dict__['_content']
        dict_tokens = ast.literal_eval(str_tokens.decode('utf-8'))
   
        return Response(dict_tokens)

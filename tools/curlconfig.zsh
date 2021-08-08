#!/bin/zsh

# Creates an account and get an 'ACTIVATION_URL': 'activate/{uid}/{token}' on email

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # email, password, re_password, name
# url "http://127.0.0.1:8000/auth/users/"

# --

# Activates account with the 'ACTIVATION_URL': 'activate/{uid}/{token}' from email,
# Sets is_active = True

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # uid, token
# url "http://127.0.0.1:8000/auth/users/activation/"

# --

# Resent email with 'ACTIVATION_URL': 'activate/{uid}/{token}'

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # email
# url "http://127.0.0.1:8000/auth/users/resend_activation/"

# --

# Creates refresh token and access token
# {
#     "refresh":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyODQ3MjI1NSwianRpIjoiMGEzYTM4OGQ0MzZjNGY3OGE0YTYwNDUxYWU5N2NhZmUiLCJ1c2VyX2lkIjoxfQ.kjwQuf9M3sRV5d74o7iOEEW4034li_zcJkaOMIWvRdI",
#     "access":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjI4Mzg2MTU1LCJqdGkiOiI1MzZkNDcwOGI2NDg0NjdjYWNiZjgzMGMyZmY0OGY0OCIsInVzZXJfaWQiOjF9.S5RwGg8I-86SYvQzHiPDIYC41uSjIQ6qynlE44pLO4s"
# }

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # email, password
# url "http://127.0.0.1:8000/auth/jwt/create/"

# --

# Refreshes the access token
# {"access":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjI4Mzg2NTQyLCJqdGkiOiI5ZDg2ZTM5NGIxNTQ0ZjFiYWVmZDkyMWZjZjhjOTdkMSIsInVzZXJfaWQiOjF9.hhOBTnLOtFOaJ5q2xO1c4k5IOuBJf-NI2qvug3wxugc"}

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # refresh
# url "http://127.0.0.1:8000/auth/jwt/refresh/"

# --

# Reset the password

# -i 
# -X POST
# -H "Content-Type: application/json" 
# -d "@tools/data.json" # email
# url "http://127.0.0.1:8000/auth/users/reset_password/"

# --

# Confirm password reset

-i 
-X POST
-H "Content-Type: application/json" 
-d "@tools/data.json" # uid token new_password  re_new_password
url "http://127.0.0.1:8000/auth/users/reset_password_confirm/"

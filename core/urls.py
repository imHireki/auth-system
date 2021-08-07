from django.urls import path, include


urlpatterns = [
    # Authentication
    path('auth/', include('djoser.urls')),
    path('auth/', include('djoser.urls.jwt')),
]

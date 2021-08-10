from django.urls import path, include


urlpatterns = [
    # Authentication
    path('api/v1/', include('apps.account.urls')),
    path('auth/', include('djoser.urls')),
    path('auth/', include('djoser.urls.jwt')),
]

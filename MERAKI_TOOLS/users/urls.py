from rest_framework.routers import DefaultRouter
from django.urls import path, include
from . import views
from rest_framework_jwt.views import obtain_jwt_token

app_name = 'users'

# user Router
user_router = DefaultRouter()
# user_router.register(r'', views.UserCreateViewSet)


urlpatterns = [
    path('', include(user_router.urls)),
    path('login/', views.UserLoginAPIView.as_view(), name='login'),

    path('obtain_jwt_token/',obtain_jwt_token),


]
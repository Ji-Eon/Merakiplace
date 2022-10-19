from rest_framework.routers import DefaultRouter
from django.urls import path, include
from . import views

from . import views
app_name = 'patient'

# user Router
patient_router = DefaultRouter()


urlpatterns = [
    path('', include(patient_router.urls)),


]

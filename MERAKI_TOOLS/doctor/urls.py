from rest_framework.routers import DefaultRouter
from django.urls import path, include
from . import views

from . import views
app_name = 'doctor'

# user Router
doctor_router = DefaultRouter()


urlpatterns = [
    path('', include(doctor_router.urls)),
    path('search/doctor', views.StringSearchView.as_view(), name='DoctorSearch'),
    path('search/date', views.DateSearchView.as_view(), name='DateSearch'),
    path('apply/', views.treatmentApplyView.as_view(), name='teatementApply'),


]

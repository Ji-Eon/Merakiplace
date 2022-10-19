# Register your models here.
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import Patient

class PatientAdmin(admin.ModelAdmin):
    
    list_display = ('id', 'patientname')

admin.site.register(Patient, PatientAdmin)
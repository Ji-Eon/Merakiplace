# Register your models here.
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .models import *

class Depertment_Listinline(admin.TabularInline):
    model = DepertmentList
    extra = 1 
    
class WeeklyTask_inline(admin.TabularInline):
    model = WeeklyTask
    extra = 1 
    
class LunchTask_inline(admin.TabularInline):
    model = LunchTask
    extra = 1 
    
class DoctorAdmin(admin.ModelAdmin):
    inlines = [Depertment_Listinline,WeeklyTask_inline,LunchTask_inline]
    
    list_display = ('id', 'doctorname', 'hospital','nonpay')
    
class ApplyAdmin(admin.ModelAdmin):
    
    list_display = ('id', 'patient', 'doctor','agree_status')

admin.site.register(Doctor, DoctorAdmin)
admin.site.register(Apply_History, ApplyAdmin)
from calendar import WEDNESDAY
from pyexpat import model
from tabnanny import verbose
from django.db import models

# Create your models here.
from django.db import models  # 표준 컨벤션
from django.utils import timezone

from MERAKI_TOOLS.patient.models import *


# ## Patient Model
class Doctor(models.Model):


    doctorname = models.CharField(
        verbose_name='의사명',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )
    
    hospital = models.CharField(
        verbose_name='병원이름',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )

    
    nonpay = models.CharField(
        verbose_name='비급여진료과목',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )


    def __str__(self):
        return self.doctorname




class DepertmentList(models.Model):
    department1 = models.CharField(
        verbose_name='진료과1',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )
    department2 = models.CharField(
        verbose_name='진료과2',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )
    department3 = models.CharField(
        verbose_name='진료과3',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )
    

    created_at = models.DateTimeField(auto_now_add=True, verbose_name="생성일")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="수정일")
    Doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name='Doctor_Depertment')
    

class WeeklyTask(models.Model):
    task_monday = models.BooleanField(default=False,verbose_name="월요일")
    task_tuesday = models.BooleanField(default=False,verbose_name="화요일")
    task_wednesday = models.BooleanField(default=False,verbose_name="수요일")
    task_thursday = models.BooleanField(default=False,verbose_name="목요일")
    task_friday = models.BooleanField(default=False,verbose_name="금요일")
    task_saturday = models.BooleanField(default=False,verbose_name="토요일")
    task_sunday = models.BooleanField(default=False,verbose_name="일요일")
    
    start_time = models.TimeField()

    close_time = models.TimeField()


    

    created_at = models.DateTimeField(auto_now_add=True, verbose_name="생성일")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="수정일")
    
    
    Doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name='Weekly_Task')
    
class LunchTask(models.Model):
   
    
    start_time = models.TimeField()

    close_time = models.TimeField()


    created_at = models.DateTimeField(auto_now_add=True, verbose_name="생성일")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="수정일")
    
    
    Doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name='Lunch_Task')
    
    

class Apply_History(models.Model):
    
    
    
    patient = models.ForeignKey(
        Patient, on_delete=models.CASCADE, related_name='Appliy_Patient')
    doctor = models.ForeignKey(
        Doctor, on_delete=models.CASCADE, related_name='Treatment_Doctor')
    treatment_dt = models.DateTimeField()
    agree_status = models.BooleanField(default=False,verbose_name="응답상태")
    degree_time = models.BooleanField(default=False,verbose_name="거절상태")
    
 
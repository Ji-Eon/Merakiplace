from pyexpat import model

# Create your models here.
from django.db import models  # 표준 컨벤션


# ## Patient Model
class Patient(models.Model):
   
    patientname = models.CharField(
        verbose_name='환자이름',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )


    def __str__(self):
        return self.patientname


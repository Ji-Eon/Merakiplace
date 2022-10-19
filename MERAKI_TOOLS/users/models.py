import uuid
from django.db import models  # 표준 컨벤션
from django.conf import settings
from django.dispatch import receiver
from django.contrib.auth.models import AbstractUser
from django.utils.encoding import python_2_unicode_compatible
from django.db.models.signals import post_save
from .manager import CustomUserManager
from django.db import models


@python_2_unicode_compatible
class User(AbstractUser):

    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    is_active = models.BooleanField(default=True)

    email = models.EmailField(
        verbose_name='email',
        max_length=255,
        unique=True,
    )
    

    username = models.CharField(
        verbose_name='username',
        max_length=255,
        default='',
        null=True,
        blank=True,
        unique=False,
    )



    objects = CustomUserManager()

    USERNAME_FIELD = 'email'

    # createsuperuser 생성 시 입력받을 필드 목록
    REQUIRED_FIELDS = ['username']

    def __str__(self):
        return self.email


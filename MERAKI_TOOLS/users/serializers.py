# from django.utils.translation import ugettext as _

from rest_framework import serializers
from rest_framework.validators import UniqueValidator
from rest_framework_simplejwt.serializers import TokenObtainPairSerializer
from rest_framework.response import Response
from .models import User
from django.http import Http404
from rest_framework import status, viewsets, mixins
import random
from django.core.validators import ValidationError

from django.db.models import Q

from django.views import View
from django.core.mail import EmailMessage
from django.conf import settings


class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('email', 'username', 'id')
        read_only_fields = ('email', )


class UserInfo(serializers.ModelSerializer):

    class Meta:
        model = User
        fields = ('email', 'username')


class UserCreateSerializer(serializers.HyperlinkedModelSerializer):

    def create(self, validated_data):
        username = validated_data['username']
        email = validated_data['email']
        password = validated_data['password']


        user_obj = User(username=username, email=email)

        user_obj.set_password(password)
        user_obj.save()

        return validated_data

    class Meta:
        model = User
        fields = [
            'username',
            'password',
            'email',
            'is_superuser',
        ]


class UserLoginSerializer(serializers.ModelSerializer):

    token = serializers.CharField(allow_blank=True, read_only=True)
    email = serializers.EmailField(
        label='Email Address', required=False, allow_blank=True)

    class Meta:
        model = User
        fields = ['email', 'password', 'token', ]
        extra_kwargs = {'password': {"write_only": True}}

    def validate(self, data):

        email = data.get("email", None)
        password = data.get("password", None)

        if not email:
            raise ValidationError("A username and email is required to login")

        user = User.objects.filter(
            Q(email=email)).distinct()

        if user.exists() and user.count() == 1:
            user_obj = user.first()
        else:
            raise ValidationError("A username/email is not valid")

        if user_obj:
            if not user_obj.check_password(password):
                raise ValidationError("Incorrect credentials please try again")

        return data


class MyTokenObtainPairSerializer(TokenObtainPairSerializer):
    @classmethod
    def get_token(cls, user):
        token = super(MyTokenObtainPairSerializer, cls).get_token(user)

        token['email'] = user.email

        return token

    def validate(self, attrs):
        data = super().validate(attrs)

        refresh = self.get_token(self.user)

        data['refresh'] = str(refresh)
        data['access'] = str(refresh.access_token)
        data['email'] = self.user.email
        data['username'] = self.user.username
       
        data['uuid'] = str(self.user.id)

        return data

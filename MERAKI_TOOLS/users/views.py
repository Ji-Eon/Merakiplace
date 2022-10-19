from rest_framework import status, viewsets, mixins
from rest_framework.decorators import api_view, APIView
from rest_framework.permissions import AllowAny
from rest_framework.response import Response
from rest_framework.generics import CreateAPIView
from rest_framework.filters import SearchFilter, OrderingFilter
from rest_auth.registration.serializers import VerifyEmailSerializer
from django.http import Http404
from .models import User
from rest_framework import generics
from .permissions import IsUserOrReadOnly
from .serializers import UserSerializer, UserCreateSerializer, UserLoginSerializer, UserInfo
from django.http import JsonResponse

from django.views import View
from django.contrib.sites.shortcuts import get_current_site
from django.utils.http              import urlsafe_base64_encode, urlsafe_base64_decode
from django.core.mail               import EmailMessage
from django.utils.encoding          import force_bytes, force_text
from django.core.exceptions         import ValidationError

from django.conf import settings

from MERAKI_TOOLS.patient.models import Patient


# views.py
from rest_framework.exceptions import NotFound
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from allauth.account.models import EmailConfirmation, EmailConfirmationHMAC

from django.shortcuts import render

from .tokens     import account_activation_token
from MERAKI_TOOLS.users import serializers


   

class UserLoginAPIView(APIView):


    serializer_class = UserLoginSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        data = request.data
        serializer = UserLoginSerializer(data=data)

        if serializer.is_valid(raise_exception=True):
            new_data = serializer.data
            return Response(new_data, status=200)
        return Response(serializer.errors, status=400)


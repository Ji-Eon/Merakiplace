from rest_framework import serializers
from .models import *
from MERAKI_TOOLS.doctor.models import *


class Applyrserializer(serializers.ModelSerializer):

    class Meta:
        model = Apply_History
        fields = '__all__'

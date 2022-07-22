from rest_framework.serializers import HyperlinkedModelSerializer
from .models import Offers
from rest_framework import serializers


class ProductModelSerializer(HyperlinkedModelSerializer):
    class Meta:
        model = Offers
        fields = ('name', 'price', 'param2_text')


class ProductSerializer(serializers.Serializer):
    name = serializers.CharField(max_length=256)
    price = serializers.IntegerField()
    size = serializers.IntegerField(source='param2_text')




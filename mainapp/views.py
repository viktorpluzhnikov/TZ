from rest_framework.viewsets import ModelViewSet
from .models import Offers
from .serializers import ProductModelSerializer, ProductSerializer
from rest_framework.response import Response
from rest_framework.views import APIView


class ProductsViewSet(ModelViewSet):
    queryset = Offers.objects.all()
    serializer_class = ProductModelSerializer


class GetProductInfoView(APIView):
    def get(self, request):
        # Получаем набор всех записей из таблицы Capital
        queryset = Offers.objects.all()
        # Сериализуем извлечённый набор записей
        serializer_for_queryset = ProductSerializer(
            instance=queryset, # Передаём набор записей
            many=True # Указываем, что на вход подаётся именно набор записей
        )
        return Response(serializer_for_queryset.data)
from django.db import models
from uuid import uuid4



class Offers(models.Model):
    # uid = models.UUIDField(primary_key=True, default=uuid4)
    name = models.CharField('name', max_length=256)
    price = models.IntegerField()
    size = models.IntegerField('param2_text')

    def __str__(self):
        return self.name
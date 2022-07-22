from django.db import models




class Offers(models.Model):
    offer_id = models.BigAutoField(primary_key=True)
    name = models.CharField(max_length=256, blank=True, null=True)
    price = models.FloatField(blank=True, null=True)
    param2_text = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'offers'

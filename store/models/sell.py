from django.db import models
from .category import Category

class Sell(models.Model):
    name = models.CharField(max_length=50)
    price = models.IntegerField(default=0)
    category = models.ForeignKey(Category, on_delete=models.CASCADE, default=1)
    description = models.CharField(max_length=200, default='' , null=True , blank=True)
    image = models.ImageField(upload_to='static/images/')
    instock = models.BooleanField(default=False)

    def __str__(self):
        return self.name 

class SellerData(models.Model):
    firstname = models.CharField(max_length=30)
    lastname = models.CharField(max_length=20)
    phone = models.CharField(max_length=15)   
    email= models.CharField(max_length=50)
    password= models.CharField(max_length=30)
    

    def __str__(self):
        return self.firstname + " | " + str(self.pk)
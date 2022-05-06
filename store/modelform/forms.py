from store.models import *
from django.forms import ModelForm
from store.models.sell import Sell, SellerData


class CustomerForm(ModelForm):
    class Meta:
        model = Customer
        fields = '__all__'

class ProductForm(ModelForm):
    class Meta:
        model = Product
        fields = '__all__'

class OrderForm(ModelForm):
    class Meta:
        model = Order
        fields = '__all__'

class SellForm(ModelForm):
    class Meta:
        model = Sell
        fields = '__all__'

class SellerForm(ModelForm):
    class Meta:
        model = SellerData
        fields = '__all__'
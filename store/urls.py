from django.contrib import admin
from django.urls import path
from .views.home import Index , store
from .views.signup import Signup
from .views.login import Login , mylogout
from .views.admindash import *
from .views.cart import Cart
from .views.checkout import CheckOut
from .views.orders import OrderView
from .views.sell_dash import *
from .middlewares.auth import  auth_middleware


urlpatterns = [
    path('', Index.as_view(), name='homepage'),
    path('store/', store , name='store'),
    path('signup', Signup.as_view(), name='signup'),
    path('login', Login.as_view(), name='login'),
    path('logout', mylogout , name='logout'),
    path('cart', auth_middleware(Cart.as_view()) , name='cart'),
    path('check-out', CheckOut.as_view() , name='checkout'),
    path('orders', auth_middleware(OrderView.as_view()), name='orders'),

    path('adminlogin', adminlogin, name='adminlogin'),
    path('adminlogout', adminlogout , name='adminlogout'),
    path('adminpanel', adminpanel, name='adminpanel'),
    

    path('adminpanel/customer', admincustomer, name='admincustomer'),
    path('adminpanel/addcustomers', add_customer, name='addcustomers'),
    path('update/<int:id>', update_customer, name='update_customer'),
    path('remove/<int:id>/', remove_customer, name='remove_customer'),

    path('adminpanel/products', adminproducts, name='adminproducts'),
    path('adminpanel/addproducts', add_product, name='addproducts'),
    path('pupdate/<int:id>', update_product, name='update_product'),
    path('premove/<int:id>/', remove_product, name='remove_product'),
    
    path('adminpanel/orders', adminorders, name='adminorders'),
    path('adminpanel/addorders', add_order, name='addorders'),
    path('oupdate/<int:id>', update_order, name='update_order'),
    path('oremove/<int:id>/', remove_order, name='remove_order'),

    path('adminpanel/sellers', adminsellers, name='adminsellers'),
    path('seupdate/<int:id>', update_seller, name='update_seller'),
    path('sremove/<int:id>/', remove_seller, name='remove_seller'),




    path('sellersignup', sell_register, name='sellersignup'),
    path('sellerlogin', sell_login, name='sellerlogin'),
    path('sellerlogout', sellerlogout , name='sellerlogout'),

    path('sellerpanel', seller_panel, name='sellerpanel'),
    path('sellerpanel/sellproduct', sell_product, name='sellproduct'),
    path('supdate/<int:id>', sell_update, name='sellupdate'),


]

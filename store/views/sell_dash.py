from django.shortcuts import render, redirect
from store.models.sell import Sell, SellerData
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login ,logout
from django.http import HttpResponseRedirect
from django.contrib.auth.models import Group
from store.modelform.forms import SellForm


# ------------Seller Register----------

def sell_register(request):

    if request.method == 'POST':
        firstname = request.POST.get('firstname')
        lastname = request.POST.get('lastname')
        phone = request.POST.get('phone')
        email = request.POST.get('email')
        password = request.POST.get('password')

        if len(User.objects.filter(username= firstname)) == 0 and len(User.objects.filter(email=email)) == 0:
            group = Group.objects.get(name='seller')
            user = User.objects.create_user(username=email,email= email,password=password)
            user.groups.add(group)
            sdata = SellerData(firstname = firstname, lastname=lastname,phone=phone, email= email, password=password )
            sdata.save()
            return HttpResponseRedirect('/sellerlogin')



    return render(request,'seller/seller_register.html')

# ------------Seller Login----------

# @allowed_users(allowed_roles=['seller'])
def sell_login(request):

    if request.method == 'POST':
        uname = request.POST.get('username')
        upass = request.POST.get('password')
        

        if uname != "" and upass != "":

            user = authenticate(username = uname, password = upass )

            # if user != None:

            login(request,user)
            return redirect('/sellerpanel')
        

    
    return render(request,'seller/seller_login.html')

def sellerlogout(request):
    request.session.clear()
    return redirect('sellerlogin')


# ------------Seller AdminPanel----------


def seller_panel(request):

    if not request.user.is_authenticated:
        return redirect('/')
   

    seller = Sell.objects.all()
   
    return render(request,'seller/seller_dash.html', {'seller':seller})


# ------------Seller Sell Product Control----------

def sell_product(request):
    
    if not request.user.is_authenticated:
        return redirect('/')

    if request.method == 'POST':
        form = SellForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/sellerpanel')
    context = {
        'form': SellForm,
    }
    return render(request, 'seller/sell_product.html', context)


def sell_update(request, id):

    if not request.user.is_authenticated:
        return redirect('/')

    sell = Sell.objects.get(pk=id)
    if request.method == "POST":
        form = SellForm(request.POST, request.FILES,instance=sell)
        if form.is_valid():
            form.save()
            return redirect('/sellerpanel')
    context = {
        'form':SellForm(instance=sell),
        
    }
    return render(request, 'seller/sell_product.html', context)




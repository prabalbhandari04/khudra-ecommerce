from django.shortcuts import render , redirect , HttpResponseRedirect
from django.contrib.auth import authenticate, login
from store.models import *
from store.modelform.forms import *
from store.models.sell import SellerData

# --------------- Admin Login -----------------
def adminlogin(request):

        if request.user.is_staff:
            return redirect('adminpanel')

        if request.method == 'POST':
            utext = request.POST.get('username')
            ptxt = request.POST.get('password')
            print(utext,ptxt)

            if utext != "" and ptxt != "":

                user = authenticate(username = utext, password = ptxt )

                if user != None:
                    if not user.is_staff:
                        login(request,user)
                        return redirect('login')
        
                    elif user.is_staff:
                        login(request,user)
                        return redirect('adminpanel')
        
        return render(request, 'admin/admin_login.html')


# --------------- Admin Logout -----------------

def adminlogout(request):
    request.session.clear()
    return redirect('adminlogin')

# --------------- Admin panel/dashboard -----------------

def adminpanel(request):
    if not request.user.is_staff:
        return redirect('/')

    customer = Customer.objects.all()
    totalcustomer = Customer.objects.filter().count() 
    product = Product.objects.all()
    totalproduct = Product.objects.filter().count() 
    order = Order.objects.all()
    totalorder = Order.objects.filter().count() 
    seller = SellerData.objects.all()
    totalseller = SellerData.objects.filter().count() 

    return render(request,'admin/admin_dashboard.html',
     {'customer':customer, 'totalcustomer':totalcustomer, 'product':product, 'totalproduct':totalproduct,
        'order':order, 'totalorder':totalorder, 'totalseller':totalseller
     })

# --------------- Admin Customer COntrol Page -----------------

def admincustomer(request):
    if not request.user.is_staff:
        return redirect('/')

    customer = Customer.objects.all()
   
    return render(request,'admin/admin_customer.html', {'customer':customer})


# --------------- Admin Customer Add Page -----------------

def add_customer(request):
    if request.method == 'POST':
        form = CustomerForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/customer')
    context = {
        'form': CustomerForm,
    }
    return render(request, 'admin/add_customers.html', context)

# --------------- Admin Customer Update Page -----------------

def update_customer(request, id):
    customer = Customer.objects.get(pk=id)
    if request.method == "POST":
        form = CustomerForm(request.POST, instance=customer)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/customer')
    context = {
        'form':CustomerForm(instance=customer),
        
    }
    return render(request, 'admin/update_customer.html', context)


# --------------- Admin Customer delete Page -----------------

def remove_customer(request, id):
         customer = Customer.objects.get(pk=id)
         customer.delete()
         return HttpResponseRedirect('/adminpanel/customer')   


# --------------- Admin Product COntrol Page -----------------

def adminproducts(request):
    if not request.user.is_staff:
        return redirect('/')

    products = Product.objects.all()

    return render(request,'admin/admin_products.html', {'products':products})

# --------------- Admin Product Add Page -----------------

def add_product(request):
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/products')
    context = {
        'form': ProductForm,
    }
    return render(request, 'admin/add_products.html', context)

# --------------- Admin Product update Page -----------------

def update_product(request, id):
    product = Product.objects.get(pk=id)
    if request.method == "POST":
        form = ProductForm(request.POST, request.FILES,instance=product)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/products')
    context = {
        'form':ProductForm(instance=product),
        
    }
    return render(request, 'admin/update_product.html', context)

# --------------- Admin Product remove Page -----------------

def remove_product(request, id):
         product = Product.objects.get(pk=id)
         product.delete()
         return HttpResponseRedirect('/adminpanel/products')  

# --------------- Admin ORder COntrol Page ----------------- 

def adminorders(request):
    if not request.user.is_staff:
        return redirect('/')

    orders = Order.objects.all()

    return render(request,'admin/admin_orders.html', {'orders':orders})

# --------------- Admin Order Add Page -----------------

def add_order(request):
    if request.method == 'POST':
        form = OrderForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/orders')
    context = {
        'form': OrderForm,
    }
    return render(request, 'admin/add_orders.html', context)


# --------------- Admin ORder update Page ----------------- 

def update_order(request, id):
    order = Order.objects.get(pk=id)
    if request.method == "POST":
        form = OrderForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/orders')
    context = {
        'form':OrderForm(instance=order),
        
    }
    return render(request, 'admin/update_order.html', context)

# --------------- Admin ORder remove Page ----------------- 

def remove_order(request, id):
         order = Order.objects.get(pk=id)
         order.delete()
         return HttpResponseRedirect('/adminpanel/orders')   


# --------------- Admin Seller Control Page ----------------- 
def adminsellers(request):
    if not request.user.is_staff:
        return redirect('/')

    sellers = SellerData.objects.all()
   
    return render(request,'admin/admin_seller.html', {'sellers':sellers})

# --------------- Admin Seller remove Page ----------------- 

def remove_seller(request, id):
         seller = SellerData.objects.get(pk=id)
         seller.delete()
         return HttpResponseRedirect('/adminpanel/sellers')   

# --------------- Admin Seller update Page ----------------- 

def update_seller(request, id):
    seller = SellerData.objects.get(pk=id)
    if request.method == "POST":
        form = SellerForm(request.POST, instance=seller)
        if form.is_valid():
            form.save()
            return redirect('/adminpanel/sellers')
    context = {
        'form':SellerForm(instance=seller),
        
    }
    return render(request, 'admin/update_seller.html', context)




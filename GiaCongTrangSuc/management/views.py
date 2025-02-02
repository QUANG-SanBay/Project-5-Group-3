from django.shortcuts import render,  get_object_or_404, redirect
from django.http import HttpResponse
from datetime import datetime
from .models import *
from .forms import PolicyForm, GiaVatLieuForm

# Create your views here.
def get_management(request):
    return render(request,'management/manage.html',{'timestamp': datetime.now().timestamp()})
def get_yeucaubaogia(request):
    return render(request,'management/tiepnhanbaogia.html',{'timestamp': datetime.now().timestamp()})
def get_quanlydonhang(request):
    return render(request,'management/quanlydonhang.html',{'timestamp': datetime.now().timestamp()})
def get_thongke(request):
    return render(request,'management/thongke.html',{'timestamp': datetime.now().timestamp()})

#các chính sách
def policy_list(request):
    policies = Policy.objects.all()
    return render(request, 'management/policy_list.html', {'policies': policies})

def policy_detail(request, pk):
    policy = get_object_or_404(Policy, pk=pk)
    return render(request, 'management/policy_detail.html', {'policy': policy})

def policy_create(request):
    if request.method == 'POST':
        form = PolicyForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('policy_list')
    else:
        form = PolicyForm()
    return render(request, 'management/policy_form.html', {'form': form})

def policy_edit(request, pk):
    policy = get_object_or_404(Policy, pk=pk)
    if request.method == 'POST':
        form = PolicyForm(request.POST, instance=policy)
        if form.is_valid():
            form.save()
            return redirect('policy_list')
    else:
        form = PolicyForm(instance=policy)
    return render(request, 'management/policy_form.html', {'form': form})

#Gia vật liệu
def gia_vat_lieu_list(request):
    gia_vat_lieu = GiaVatLieu.objects.all()
    return render(request, 'management/gia_vat_lieu_list.html', {'gia_vat_lieu': gia_vat_lieu})

def gia_vat_lieu_detail(request, pk):
    gia_vat_lieu = get_object_or_404(GiaVatLieu, pk=pk)
    return render(request, 'management/gia_vat_lieu_detail.html', {'gia_vat_lieu': gia_vat_lieu})

def gia_vat_lieu_create(request):
    if request.method == 'POST':
        form = GiaVatLieuForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('gia_vat_lieu_list')
    else:
        form = GiaVatLieuForm()
    return render(request, 'management/gia_vat_lieu_form.html', {'form': form})

def gia_vat_lieu_edit(request, pk):
    gia_vat_lieu = get_object_or_404(GiaVatLieu, pk=pk)
    if request.method == 'POST':
        form = GiaVatLieuForm(request.POST, instance=gia_vat_lieu)
        if form.is_valid():
            form.save()
            return redirect('gia_vat_lieu_list')
    else:
        form = GiaVatLieuForm(instance=gia_vat_lieu)
    return render(request, 'management/gia_vat_lieu_form.html', {'form': form})
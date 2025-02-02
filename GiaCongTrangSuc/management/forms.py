from django import forms
from .models import *

class PolicyForm(forms.ModelForm):
    class Meta:
        model = Policy
        fields = ['policy_type', 'title', 'content']
class GiaVatLieuForm(forms.ModelForm):
    class Meta:
        model = GiaVatLieu
        fields = ['name', 'price']
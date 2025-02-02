from django import forms
from .models import Policy

class PolicyForm(forms.ModelForm):
    class Meta:
        model = Policy
        fields = ['policy_type', 'title', 'content']


from django.shortcuts import render

def projects(request):
    return render(request, 'app2/projects.html')

def contact(request):
    return render(request, 'app2/contact.html')

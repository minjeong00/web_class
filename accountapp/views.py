from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.


def hello_world(request):
    if request.method == "POST":

        a = request.POST.get('input_text')

        return render(request,'accountapp/hello_world.html', context={'text': a })
    else:
        return render(request, 'accountapp/hello_world.html', context={'text':'GET METHOD'})




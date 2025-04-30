from constance import config

from django.template.loader import render_to_string
from django.views.generic import TemplateView
from django.views.generic import View
from django.db import transaction
from django.core.mail import EmailMessage
from django.http import HttpResponse

from service.corporativeinfo.models import CorporativeInfo
from service.corporativeinfo.models import Service
from service.corporativeinfo.models import GalleryItem
from service.corporativeinfo.models import Customer


class HomeView(TemplateView):
    template_name = 'home.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['mission'] = CorporativeInfo.objects.get(slug='mision')
        context['vision'] = CorporativeInfo.objects.get(slug='vision')
        context['politics'] = CorporativeInfo.objects.get(
            slug='politicas',
        )

        context['we_text'] = config.TEXTO_NOSOTROS
        context['address'] = config.DIRECCION
        context['city'] = config.CIUDAD
        context['phone_1'] = config.TELEFONO_1
        context['phone_2'] = config.TELEFONO_2
        context['cell_phone'] = config.TELEFONO_CELULAR
        context['email'] = config.CORREO

        context['services'] = Service.objects.all()
        context['gallery_items'] = GalleryItem.objects.all()
        context['customers'] = Customer.objects.all()

        return context


class ContactFormView(View):
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['mission'] = CorporativeInfo.objects.get(slug='mision')
        context['vision'] = CorporativeInfo.objects.get(slug='vision')
        context['politics'] = CorporativeInfo.objects.get(
            slug='politicas',
        )

        return context

    @transaction.atomic
    def post(self, request, *args, **kwargs):

        subject = request.POST['msg_subject']
        phone = request.POST['phone']
        name = request.POST['name']
        email = request.POST['email']
        message = request.POST['message']

        body = render_to_string(
            'contact_form_message.html', {
                'subject': subject,
                'phone': phone,
                'name': name,
                'email': email,
                'message': message,
            },
        )

        email_message = EmailMessage(
            subject='Mensaje de usuario Web',
            body=body,
            from_email=email,
            to=[
                'andres.quiroga@roadhousestudio.co',
            ],
        )
        email_message.content_subtype = 'html'
        email_message.send()

        return HttpResponse('OK')

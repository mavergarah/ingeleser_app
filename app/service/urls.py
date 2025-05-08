from django.conf import settings
from django.conf.urls import include
from django.conf.urls import url
from django.contrib import admin

from service.app.views import HomeView
from service.app.views import ContactFormView

admin.site.site_title = 'Ingeleser'
admin.site.site_header = 'Ingeleser - Administrador'

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', HomeView.as_view()),

    url(
        r'^contact_form/$',
        ContactFormView.as_view(),
        name='contact_form',
    ),
]

if settings.DEBUG:
    from django.conf.urls.static import static
    import debug_toolbar

    urlpatterns = [
        url(r'^__debug__/', include(debug_toolbar.urls)),
    ] + urlpatterns

    urlpatterns += static(
        settings.MEDIA_URL,
        document_root=settings.MEDIA_ROOT
    )

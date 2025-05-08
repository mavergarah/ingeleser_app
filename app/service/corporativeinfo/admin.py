from django.contrib import admin

from .models import CorporativeInfo
from .models import Service
from .models import Customer
from .models import GalleryItem


@admin.register(CorporativeInfo)
class CorporativeInfoAdmin(admin.ModelAdmin):
    def has_delete_permission(self, request, obj=None):
        return False

    def has_add_permission(self, request, obj=None):
        return False

    def get_actions(self, request):
        actions = super().get_actions(request)
        if 'delete_select' in actions:
            del actions['delete_selected']
        return actions

    list_display = (
        'title',
        'description',
    )

    readonly_fields = (
        'slug',
    )

    fieldsets = (
        ('Ítem', {
            'fields': (
                'title',
                'slug',
            ),
        }),
        ('Description', {
            'fields': (
                'description',
            ),
        }),
    )

    class Media:
        css = {
            'all': (
                'libs/redactor/redactor.min.css',
                'css/admin.css',
            )
        }
        js = (
            '//code.jquery.com/jquery-latest.min.js',
            'libs/redactor/redactor.min.js',
            'libs/redactor/langs/es.js',
            'libs/redactor/plugins/alignment.js',
            'libs/redactor/plugins/imagemanager.js',
            'libs/redactor/plugins/video.js',
            'js/admin.js',
        )


@admin.register(Service)
class ServiceAdmin(admin.ModelAdmin):
    list_display = (
        'name',
    )

    class Media:
        css = {
            'all': (
                'libs/redactor/redactor.min.css',
                'css/admin.css',
            )
        }
        js = (
            '//code.jquery.com/jquery-latest.min.js',
            'libs/redactor/redactor.min.js',
            'libs/redactor/langs/es.js',
            'libs/redactor/plugins/alignment.js',
            'libs/redactor/plugins/imagemanager.js',
            'libs/redactor/plugins/video.js',
            'js/admin.js',
        )


@admin.register(Customer)
class CustomerAdmin(admin.ModelAdmin):
    list_display = (
        'name',
    )

    class Media:
        css = {
            'all': (
                'libs/redactor/redactor.min.css',
                'css/admin.css',
            )
        }
        js = (
            '//code.jquery.com/jquery-latest.min.js',
            'libs/redactor/redactor.min.js',
            'libs/redactor/langs/es.js',
            'libs/redactor/plugins/alignment.js',
            'libs/redactor/plugins/imagemanager.js',
            'libs/redactor/plugins/video.js',
            'js/admin.js',
        )


@admin.register(GalleryItem)
class GalleryItemAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'image',
    )

    class Media:
        css = {
            'all': (
                'libs/redactor/redactor.min.css',
                'css/admin.css',
            )
        }
        js = (
            '//code.jquery.com/jquery-latest.min.js',
            'libs/redactor/redactor.min.js',
            'libs/redactor/langs/es.js',
            'libs/redactor/plugins/alignment.js',
            'libs/redactor/plugins/imagemanager.js',
            'libs/redactor/plugins/video.js',
            'js/admin.js',
        )

from django.db import models
from django.utils.text import slugify
from service.app.validators import FileSizeValidator


class CorporativeInfo(models.Model):
    title = models.CharField(
        max_length=30,
        verbose_name='título',
    )

    description = models.TextField(
        verbose_name='descripción',
    )

    slug = models.SlugField()

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title)
        super().save(*args, **kwargs)

    class Meta:
        verbose_name = 'Ítem informativo'
        verbose_name_plural = 'Ítems informativos'
        ordering = ('id',)


class Service(models.Model):
    name = models.CharField(
        max_length=50,
        verbose_name='nombre',
    )

    description = models.TextField(
        blank=True,
        null=True,
        verbose_name='descripción',
    )

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'servicio'
        verbose_name_plural = 'servicios'
        ordering = ('id',)


class Customer(models.Model):
    name = models.CharField(
        max_length=50,
        verbose_name='nombre',
    )

    logo = models.ImageField(
        max_length=256,
        verbose_name='logo',
        validators=[FileSizeValidator(4000)],
    )

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'cliente'
        verbose_name_plural = 'clientes'
        ordering = ('id',)


class GalleryItem(models.Model):
    image = models.ImageField(
        max_length=256,
        verbose_name='imagen',
        validators=[FileSizeValidator(4000)],
    )

    def __str__(self):
        return ''.format(self.id)

    class Meta:
        verbose_name = 'ítem de galería'
        verbose_name_plural = 'ítems de galería'
        ordering = ('id',)

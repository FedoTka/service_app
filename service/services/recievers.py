from django.dispatch import receiver
from django.db.models.signals import post_delete
from django.conf import settings
from django.core.cache import cache



@receiver(post_delete, sender=None)
def delete_cache_total_sum(*args, **kwargs):
    cache.delete(settings.PRICE_CACHE_NAME)

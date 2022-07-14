from django.db import models
from django.conf import settings

class Discussion(models.Model):
    title = models.CharField(max_length=100)
    description = models.TextField()
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='discussions', null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    upvotes = models.IntegerField(default=0)
    downvotes = models.IntegerField(default=0)  
    views = models.IntegerField(default=0)
    comment_count = models.IntegerField(default=0)
    def __str__(self):
        return self.title

class Comments(models.Model):
    discussion = models.ForeignKey(Discussion, on_delete=models.CASCADE, null=False, related_name='comments')
    comment = models.TextField()
    hash = models.CharField(max_length=100, null=True)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='comments', null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    # parent = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True)
    parent = models.CharField(max_length=100, null=True)
    def __str__(self):
        return self.comment
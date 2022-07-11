from rest_framework import viewsets
from discussions.models import Discussion
from discussions.serializers import DiscussionSerializer

class DiscussionViewSet(viewsets.ModelViewSet):
    queryset = Discussion.objects.all()
    serializer_class = DiscussionSerializer
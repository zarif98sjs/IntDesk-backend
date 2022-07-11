from gc import get_objects
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from discussions.models import Discussion,Comments
from discussions.serializers import DiscussionSerializer, CommentSerializer
from django.shortcuts import get_object_or_404

class DiscussionViewSet(viewsets.ModelViewSet):
    queryset = Discussion.objects.all()
    serializer_class = DiscussionSerializer

    @action(detail=True, methods=['POST'])
    def comment(self,request,pk):
        discussion = get_object_or_404(Discussion,pk=pk)
        data = request.data

        comment_ = Comments.objects.create(
            comment = data.get('comment'),
            discussion_id = discussion.id
        )

        serializer = CommentSerializer(comment_)
        return Response(serializer.data, status=status.HTTP_200_OK)
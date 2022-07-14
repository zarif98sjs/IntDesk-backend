from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from discussions.models import Discussion,Comments
from discussions.serializers import DiscussionSerializer, CommentSerializer
from django.shortcuts import get_object_or_404
from django.db import transaction

# class CommentViewSet(viewsets.ModelViewSet):
#     queryset = Comments.objects.all()
#     serializer_class = CommentSerializer

#     @transaction.atomic
#     def create(self, request, *args, **kwargs):
#         data = request.data
#         discussion = get_object_or_404(Discussion, pk=data['discussion_id'])

#         comment = Comments.objects.create(
#             discussion=discussion, 
#             comment=data['comment'], 
#             user=request.user)

#         serializer = CommentSerializer(comment)

#         return Response(serializer.data, status=status.HTTP_201_CREATED)

#     def update(self, request, *args, **kwargs):
#         with transaction.atomic():
#             comment = get_object_or_404(Comments, pk=kwargs['pk'])
#             comment.comment = request.data['comment']
#             comment.save()
#             serializer = CommentSerializer(comment)
#             return Response(serializer.data, status=status.HTTP_200_OK)
#     def destroy(self, request, *args, **kwargs):
#         with transaction.atomic():
#             comment = get_object_or_404(Comments, pk=kwargs['pk'])
#             comment.delete()
#             return Response(status=status.HTTP_204_NO_CONTENT)


class DiscussionViewSet(viewsets.ModelViewSet):
    queryset = Discussion.objects.all()
    serializer_class = DiscussionSerializer

    @transaction.atomic
    def create(self, request, *args, **kwargs):
        data = request.data

        discussion = Discussion.objects.create(
            title=data['title'],
            description=data['description'],
            user=request.user
        )

        serializer = DiscussionSerializer(discussion)
        
        return Response(serializer.data, status=status.HTTP_201_CREATED)
        

    ## get all comments of a discussion
    @action(detail=True, methods=['get'])
    def comments(self, request, pk=None):
        discussion = get_object_or_404(Discussion, pk=pk)
        comments = discussion.comments.all()
        serializer = CommentSerializer(comments, many=True)
        return Response(serializer.data)

    ## get a single comment of a discussion, pass extra parameter (comment_id) in action
    ## note that, the id doesn't start from 1 for a specific discussion
    ## the comments have global id, not specific to a discussion
    @action(detail=True, methods=['get'], url_path='comment_id/(?P<comment_id>[0-9]+)')
    def comment_id(self, request, comment_id, pk=None):
        discussion = get_object_or_404(Discussion, pk=pk)
        comment = discussion.comments.get(pk=comment_id)
        serializer = CommentSerializer(comment)
        return Response(serializer.data)

    ## create reply to a comment
    @action(detail=True, methods=['post'], url_path='create_reply/(?P<comment_id>[0-9]+)')
    def create_reply(self, request,comment_id,pk=None):
        discussion = get_object_or_404(Discussion,pk=pk)
        parent_comment = discussion.comments.get(pk=comment_id)
        data = request.data

        comment_ = Comments.objects.create(
            comment = data.get('comment'),
            discussion_id = discussion.id,
            parent = parent_comment,
            user = request.user
        )

        serializer = CommentSerializer(comment_)
        return Response(serializer.data, status=status.HTTP_200_OK)

    ## create a new comment for a discussion
    @action(detail=True, methods=['POST'])
    def comment(self,request,pk):
        discussion = get_object_or_404(Discussion,pk=pk)
        data = request.data

        if data.get('comment') is None:
            raise ValueError("Comment is required")
        elif data.get('hash') is None:
            raise ValueError("Hash is required")
        else:
            comment_ = Comments.objects.create(
                comment = data.get('comment'),
                hash = data.get('hash'),
                discussion_id = discussion.id,
                user = request.user
            )

        serializer = CommentSerializer(comment_)
        return Response(serializer.data, status=status.HTTP_200_OK)
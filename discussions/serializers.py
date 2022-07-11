from rest_framework import serializers
from discussions.models import Discussion


class DynamicFieldsModelSerializer(serializers.ModelSerializer):
    """ Helper class to select fields dynamically via parameters """

    def __init__(self, *args, **kwargs):
        fields = kwargs.pop('fields', None)

        super(DynamicFieldsModelSerializer, self).__init__(*args, **kwargs)

        if fields is not None:
            allowed = set(fields)
            existing = set(self.fields)
            for field_name in existing - allowed:
                self.fields.pop(field_name)

class DiscussionSerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = Discussion
        fields = '__all__'
        read_only_fields = ('created_at', 'updated_at', 'upvotes', 'downvotes', 'views', 'comment_count')
        extra_kwargs = {
            'title': {'required': True},
            'description': {'required': True},
        }
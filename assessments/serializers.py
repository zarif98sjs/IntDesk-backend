from sre_constants import IN
from rest_framework import serializers
from assessments.models import *
from problems.serializers import RoleSerializer, CategorySerializer
from users.serializers import UserSerializer


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


class QuestionSerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = Question
        fields = ('id', 'assessment_id', 'description', 'time', 'points', 'difficulty_level')

class OptionSerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = Option
        fields = '__all__'

class QuesOptionSerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = QuesOption
        fields = '__all__'


class AssessmentSerializer(DynamicFieldsModelSerializer):

    roles = RoleSerializer(many=True)
    categories = CategorySerializer(many=True)
    question = QuestionSerializer( many = True )

    class Meta:
        model = Assessment
        fields = '__all__'
        # fields = [
        #    'id', 'roles', 'subcategories', 'questions' , 'skill_name', 'passed_by', 'taken_by', 'image_link'
        #]






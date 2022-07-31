from sre_constants import IN
from rest_framework import serializers
from problems.models import Company, Role, Category, SubCategory, Problem, \
    InputOutput, BookMark, Solution
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

class CompanySerializer(DynamicFieldsModelSerializer):

    class Meta:
        model = Company
        fields = ('id', 'name', 'description')


class RoleSerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = Role
        fields = ('id', 'name', 'description')


class CategorySerializer(DynamicFieldsModelSerializer):
    class Meta:
        model = Category
        fields = ('id', 'name', 'description')


class SubCategorySerializer(DynamicFieldsModelSerializer):
    category = CategorySerializer(read_only=True)
    class Meta:
        model = SubCategory
        fields = ('id', 'category_id', 'name', 'description')
        extra_kwargs = {
            'category': {"required": True}
        }

class InputOutputSerializer(DynamicFieldsModelSerializer):

    
    class Meta:
        model = InputOutput
        fields = ('id', 'problem_id', 'input', 'output', 'points')


class ProblemSerializer(DynamicFieldsModelSerializer):

    companies = CompanySerializer(many=True)
    roles = RoleSerializer(many=True)
    subcategories = SubCategorySerializer(many=True)
    
    # a list of inputoutputs
    input_outputs = InputOutputSerializer(many=True, fields=('input', 'output', 'points'))


    class Meta:
        model = Problem
        fields = '__all__'
        fields = (
             'id',
             'input_outputs', 
             'companies',
              'subcategories', 
              'roles', 
              'name', 'description',
             'time_limit', 'memory_limit', 'difficulty', 'submission_count', 'solve_count'
        )

    # def to_representation(self, instance):
    #     '''Convert compnay, roles, subcategories to list'''
    #     ret = super().to_representation(instance)
    #     ret['companies'] = [x.name for x in instance.companies]
    #     return ret

    

class BookMarkSerializer(DynamicFieldsModelSerializer):
    problem = ProblemSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    class Meta:
        model = BookMark
        fields = '__all__'
        


class SolutionSerializer(DynamicFieldsModelSerializer):
    problem = ProblemSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    
    class Meta:
        model = Solution
        fields = '__all__'

        


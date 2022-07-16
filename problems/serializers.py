from sre_constants import IN
from rest_framework import serializers
from problems.models import Company, Role, Category, SubCategory, Problem, \
    InputOutput, BookMark, Solution
from users.serializers import UserSerializer


class CompanySerializer(serializers.ModelSerializer):

    class Meta:
        model = Company
        fields = '__all__'


class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'


class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'


class SubCategorySerializer(serializers.ModelSerializer):
    category = CategorySerializer(read_only=True)
    class Meta:
        model = SubCategory
        fields = '__all__'
        extra_kwargs = {
            'category': {"required": True}
        }

class InputOutputSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = InputOutput
        fields = '__all__'


class ProblemSerializer(serializers.ModelSerializer):

    companies = CompanySerializer(many=True, read_only=True)
    roles = RoleSerializer(many=True, read_only=True)
    subcategories = SubCategorySerializer(many=True, read_only=True)
    inputoutputs = InputOutputSerializer(read_only=True)

    class Meta:
        model = Problem
        fields = '__all__'



class BookMarkSerializer(serializers.ModelSerializer):
    problem = ProblemSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    class Meta:
        model = BookMark
        fields = '__all__'
        


class SolutionSerializer(serializers.ModelSerializer):
    problem = ProblemSerializer(read_only=True)
    user = UserSerializer(read_only=True)
    
    class Meta:
        model = Solution
        fields = '__all__'

        


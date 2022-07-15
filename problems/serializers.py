from rest_framework import serializers
from problems.models import Company, Role, Category, SubCategory, Problem, \
    InputOutput, BookMark, Solution
from users.serializers import UserSerializer

class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = '__all__'
        read_only_fields = ('name', 'description')

class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Role
        fields = '__all__'
        read_only_fields = ('name', 'description')

class CategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = Category
        fields = '__all__'
        read_only_fields = ('name', 'description')

class SubCategorySerializer(serializers.ModelSerializer):
    category = CategorySerializer(read_only=True)
    class Meta:
        model = SubCategory
        fields = '__all__'
        read_only_fields = ('name', 'description', 'category')

class ProblemSerializer(serializers.ModelSerializer):
    
    class Meta:
        model = Problem
        fields = '__all__'
        read_only_fields = ('name', 'description')
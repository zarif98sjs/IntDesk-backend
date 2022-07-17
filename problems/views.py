from django import views
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response

from problems.models import Company, Role, Category, SubCategory, Problem, \
    InputOutput, BookMark, Solution
from problems.serializers import CompanySerializer, RoleSerializer, \
    CategorySerializer, SubCategorySerializer, ProblemSerializer, \
    InputOutputSerializer, BookMarkSerializer, SolutionSerializer
from django.shortcuts import get_object_or_404
from django.db import transaction

class ProblemViewSet(viewsets.ModelViewSet):
    queryset = Problem.objects.all()
    serializer_class = ProblemSerializer

    @transaction.atomic
    def create(self, request, *args, **kwargs):
        data = request.data
        print(data)
        problem = Problem.objects.create(
            name=data['name'],
            description=data['description'],
            time_limit=data['time_limit'],
            memory_limit=data['memory_limit'],
            difficulty=data['difficulty'],
            submission_count=data['submission_count'],
            solve_count=data['solve_count']
        )

        serializer = ProblemSerializer(problem)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    ## put request to update problem
    @transaction.atomic
    def update(self, request, *args, **kwargs):
        data = request.data
        problem = get_object_or_404(Problem, pk=kwargs['pk'])
        if data.get('name') is not None: problem.name = data['name']
        if data.get('description') is not None: problem.description = data['description']
        if data.get('time_limit') is not None: problem.time_limit = data['time_limit']
        if data.get('memory_limit') is not None: problem.memory_limit = data['memory_limit']
        if data.get('difficulty') is not None: problem.difficulty = data['difficulty']
        if data.get('submission_count') is not None: problem.submission_count = data['submission_count']
        if data.get('solve_count') is not None: problem.solve_count = data['solve_count']
        problem.save()
        serializer = ProblemSerializer(problem)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    ## get all companies of a problem
    @action(detail=True, methods=['GET'])
    def companies(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        companies = problem.companies.all()
        serializer = CompanySerializer(companies, many=True)
        return Response(serializer.data)
    
    ## get all roles of a problem
    @action(detail=True, methods=['GET'])
    def roles(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        roles = problem.roles.all()
        serializer = RoleSerializer(roles, many=True)
        return Response(serializer.data)
    
    ## get all subcategories of a problem
    @action(detail=True, methods=['GET'])
    def subcategories(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        subcategories = problem.subcategories.all()
        serializer = SubCategorySerializer(subcategories, many=True)
        return Response(serializer.data)
    

    ## get all input outputs of a problem
    @action(detail=True, methods=['GET'])
    def input_outputs(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        input_outputs = problem.input_outputs.all()
        serializer = InputOutputSerializer(input_outputs, many=True)
        return Response(serializer.data)

    
    # add a new company to problem
    @action(detail=True, methods=['POST'])
    def company(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        data = request.data
        
        if data.get('name') is None:
            raise ValueError("company name is required")

        company, created = Company.objects.get_or_create(name=data.get('name'))
        
        if data.get('description') is not None:
            company.description = data.get('description')
        
        company.save()
        problem.companies.add(company)
        serializer = CompanySerializer(company)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # add a new role to problem
    @action(detail=True, methods=['POST'])
    def role(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        data = request.data
        
        if data.get('name') is None:
            raise ValueError("role name is required")

        role, created = Role.objects.get_or_create(name=data.get('name'))
        
        if data.get('description') is not None:
            role.description = data.get('description')
        
        role.save()
        problem.roles.add(role)
        serializer = RoleSerializer(role)
        return Response(serializer.data, status=status.HTTP_200_OK)

    # add a new subcategory to problem
    @action(detail=True, methods=['POST'])
    def subcategory(self, request, pk):
        problem = get_object_or_404(Problem, pk=pk)
        data = request.data

        serializer = ProblemSerializer(problem)
        
        if data.get('category') is None:
            raise ValueError("category name is required")
        elif data.get('name') is None:
            raise ValueError("sub_category name is required")


        category, created = Category.objects.get_or_create(name=data.get('category'))
        
        if data.get("category_description") is not None:
            category.description = data.get('category_description')
        category.save()

        subcategory, created = SubCategory.objects.get_or_create(name=data.get('name'), category=category)
        
        if data.get("description") is not None:
            subcategory.description = data.get('description')
        subcategory.save()
        problem.subcategories.add(subcategory)
        serializer = SubCategorySerializer(subcategory)
        return Response(serializer.data, status=status.HTTP_200_OK)


    ## add new input-output files to a problem
    @action(detail=True, methods=['POST'])
    def input_output(self, request, pk):

        
        problem = get_object_or_404(Problem, pk=pk)
        data = request.data
        
        if data.get('input') is None:
            raise ValueError("input file is required")
        if data.get('output') is None:
            raise ValueError("output file is required")

        input_output = InputOutput.objects.create(
            input=data.get('input'),
            output=data.get('output'),
            points = data.get('points'),
            problem = problem
        )

        input_output.save()
        serializer = InputOutputSerializer(input_output)
        return Response(serializer.data, status=status.HTTP_200_OK)
    

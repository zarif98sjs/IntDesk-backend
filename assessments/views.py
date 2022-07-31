from django.shortcuts import render
from assessments.serializers import *
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from django.db import transaction
from rest_framework import generics

# Create your views here.

class AssessmentViewSet(viewsets.ModelViewSet):
    queryset = Assessment.objects.all()
    serializer_class = AssessmentSerializer
    # http_method_names = ['get', 'post', 'head', 'delete', 'update']

    ## add new question to an assessment
    @action(detail=True, methods=['post'])
    def question(self, request, pk):
        assessment = get_object_or_404(Assessment, pk=pk)
        data = request.data
        # print(data)

        question = Question.objects.create(
            description = data['description'],
            time = data['time'],
            points = data['points'],
            difficulty_level = data['difficulty'],
            assessment_id = assessment.id
        )
        question.save()
        serializer = QuestionSerializer(question)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    # create assessment
    @transaction.atomic
    def create(self, request, *args, **kwargs):
        data = request.data
        print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link'],
            # roles = data['roles']
        )
        

        if data.get('roles') is None:
            serializer = AssessmentSerializer(assessment)
            return Response(serializer.data, status=status.HTTP_200_OK)

        for role in data.get('roles'):
            # print(role)
            role, created = Role.objects.get_or_create(name=role)
            role.save()
            assessment.roles.add(role)
            # serializer = RoleSerializer(role)  
        
        # if data.get('subcategories') is None:
        #     serializer = AssessmentSerializer(assessment)
        #     return Response(serializer.data, status=status.HTTP_200_OK)

        # for subcategory in data.get('subcategories'):
        #     # print(role)
        #     subcategory, created = SubCategory.objects.get_or_create(name=subcategory)
        #     subcategory.save()
        #     assessment.subcategories.add(subcategory)

        serializer = AssessmentSerializer(assessment)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    

    ## delete assessment
    @action(detail=True, methods=['DELETE'])
    def delete(self, request, pk=None):
        assessment = get_object_or_404(Assessment,pk=pk)
        assessment.delete()
        ret = {'message': 'assessment deleted'}
        return Response(ret,status=status.HTTP_200_OK)


    ## create a new assessment
    @action(detail=True, methods=['POST'])
    def assessment(self,request,pk):
        data = request.data
        print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link'],
            # roles = data['roles']
        )

        serializer = AssessmentSerializer(assessment)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    # ## create a new question
    # @action(detail=True, methods=['POST'])
    # def question(self,request,pk):
    #     data = request.data
    #     print(data)
    #     question = Question.objects.create(
    #         description = data['description'],
    #         time = data['time'],
    #         points = data['points'],
    #         difficulty_level = data['difficulty_level']
    #     )

    #     serializer = QuestionSerializer(question)

    #     return Response(serializer.data, status=status.HTTP_201_CREATED)


   




    # ## put request to update problem
    # @transaction.atomic
    # def update(self, request, *args, **kwargs):
    #     data = request.data
    #     problem = get_object_or_404(Problem, pk=kwargs['pk'])
    #     if data.get('name') is not None: problem.name = data['name']
    #     if data.get('description') is not None: problem.description = data['description']
    #     if data.get('time_limit') is not None: problem.time_limit = data['time_limit']
    #     if data.get('memory_limit') is not None: problem.memory_limit = data['memory_limit']
    #     if data.get('difficulty') is not None: problem.difficulty = data['difficulty']
    #     if data.get('submission_count') is not None: problem.submission_count = data['submission_count']
    #     if data.get('solve_count') is not None: problem.solve_count = data['solve_count']
    #     problem.save()
    #     serializer = ProblemSerializer(problem)
    #     return Response(serializer.data, status=status.HTTP_201_CREATED)

    ## get all assessments
    @action(detail=True, methods=['get'])
    def assessments(self, request, pk=None):
        assessments = Assessment.objects.all()
        serializer = AssessmentSerializer(assessments, many=True)
        return Response(serializer.data)

    ## get all questions of an assessment
    @action(detail=True, methods=['get'])
    def question(self, request, pk=None):
        assess = get_object_or_404(Assessment, pk=pk)
        questions = assess.question.all()
        serializer = QuestionSerializer(questions, many=True)
        return Response(serializer.data)


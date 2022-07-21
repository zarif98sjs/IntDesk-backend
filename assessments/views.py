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

    # create assessment
    @transaction.atomic
    def create(self, request, *args, **kwargs):
        data = request.data
        print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link']
        )

        serializer = AssessmentSerializer(assessment)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    ## create a new assessment
    @action(detail=True, methods=['POST'])
    def assessment(self,request,pk):
        data = request.data
        print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link']
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


    ## add new question to an assessment
    @action(detail=True, methods=['POST'])
    def question(self, request, pk):

        
        assessment = get_object_or_404(Assessment, pk=pk)
        data = request.data
        
        if data.get('question') is None:
            raise ValueError("question is required")

        question = Question.objects.create(
            description = data['description'],
            time = data['time'],
            points = data['points'],
            difficulty_level = data['difficulty_level'],
            assessment = assessment
        )

        question.save()
        serializer = QuestionSerializer(question)
        return Response(serializer.data, status=status.HTTP_201_CREATED)


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
    def questions(self, request, pk=None):
        assess = get_object_or_404(Assessment, pk=pk)
        questions = assess.questions.all()
        serializer = QuestionSerializer(questions, many=True)
        return Response(serializer.data)

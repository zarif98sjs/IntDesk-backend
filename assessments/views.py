from django.shortcuts import render
from assessments.serializers import *
from rest_framework import viewsets, status
from rest_framework.decorators import action
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from django.db import transaction
from rest_framework import generics
import random
import datetime

# Create your views here.
pass_percentage = 80

def get_difficulty( request ):
    # print("inside difficulty function")
    # print(request.data)
    available_difficulty = ['E', 'M', 'H']
    limit = 2
    if request.data['E'] >= limit :
        available_difficulty.remove('E')
    if request.data['M'] >= limit :
        available_difficulty.remove('M')
    if request.data['H'] >= limit :
        available_difficulty.remove('H')
    # print(available_difficulty)
    chosen_difficulty = random.choice(available_difficulty)
    # print(chosen_difficulty)
    # print(request.data['E'])
    return chosen_difficulty


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
            # points = data['points'],
            difficulty_level = data['difficulty'],
            assessment_id = assessment.id
        )
        question.save()
        serializer = QuestionSerializer(question)     

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    # add options to an assessment
    @action(detail=True, methods=['post'])
    def options(self, request, pk):
        
        data = request.data
        # print(data)
        question = get_object_or_404(Question, pk=data['ques'])
        option = Option.objects.create(
            description = data['option_description'],
        )
        option.save()
        serializer = OptionSerializer(option)   
        print("Option Serializer")
        print(serializer.data)
        ques_option = QuesOption.objects.create(
            question_id = question.id,
            option_id = option.id,
            is_correct = data['correct'],
        )
        ques_option.save()
        serializer = QuesOptionSerializer(ques_option)   
        print("Question Options")
        print(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED) 


    # create assessment
    @transaction.atomic
    def create(self, request, *args, **kwargs):
        data = request.data
        # print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link'],
            # roles = data['roles']
        )
        

        # if data.get('roles') is None:
        #     serializer = AssessmentSerializer(assessment)
        #     return Response(serializer.data, status=status.HTTP_200_OK)

        for role in data.get('roles'):
            # print(role)
            role, created = Role.objects.get_or_create(name=role)
            role.save()
            assessment.roles.add(role)
            # serializer = RoleSerializer(role)  
        
        # if data.get('categories') is None:
        #     serializer = AssessmentSerializer(assessment)
        #     return Response(serializer.data, status=status.HTTP_200_OK)

        for category in data.get('categories'):
            # print(role)
            category, created = Category.objects.get_or_create(name=category)
            category.save()
            assessment.categories.add(category)

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
        # print(data)
        assessment = Assessment.objects.create(
            skill_name=data['skill_name'],
            passed_by=data['passed_by'],
            taken_by=data['taken_by'],
            image_link = data['image_link'],
            # roles = data['roles']
        )

        serializer = AssessmentSerializer(assessment)

        return Response(serializer.data, status=status.HTTP_201_CREATED)



    ## put request to update assessment
    @transaction.atomic
    def update(self, request, *args, **kwargs):
        data = request.data
        assessment = get_object_or_404(Assessment, pk=kwargs['pk'])
        if data.get('skill_name') is not None: assessment.skill_name = data['skill_name']
        if data.get('image_link') is not None: assessment.image_link = data['image_link']
        # update passed_by and taken by of an assessment
        if data.get('passed_by') is not None: assessment.passed_by = assessment.passed_by + data['passed_by']
        if data.get('taken_by') is not None: assessment.taken_by = assessment.taken_by + data['taken_by']
        # ---------------------------------------------
       
        for role in data.get('roles'):
            role, created = Role.objects.get_or_create(name=role)
            role.save()
            assessment.roles.add(role)
        for category in data.get('categories'):
            # print(role)
            category, created = Category.objects.get_or_create(name=category)
            category.save()
            assessment.categories.add(category)
        assessment.save()
        serializer = AssessmentSerializer(assessment)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    ## delete question
    @action(detail=True, methods=['DELETE'])
    def delete_question(self, request,pk=None):
        ques = get_object_or_404(Question,pk=pk)
        # ques_options = QuesOption.objects.filter(question = ques)
        # ques_option_serializer = QuesOptionSerializer(ques_options, many=True)
        # # print(ques_option_serializer.data)
        # ques_option_data = ques_option_serializer.data
        # for per_ques_opt in ques_option_data:
        #     # print(per_ques_opt['option_id'])
        #     option = get_object_or_404(Option,pk = per_ques_opt['option_id']) 
        #     print(option)
        #     option.delete()
        # ques_options.delete()
        ques.delete()
        # ques.delete()
        ret = {'message': 'question deleted'}
        return Response(ret,status=status.HTTP_200_OK)

    ## get all assessments
    @action(detail=True, methods=['get'])
    def assessments(self, request, pk=None):
        assessments = Assessment.objects.all()
        serializer = AssessmentSerializer(assessments, many=True)
        return Response(serializer.data)

    ## get a random question of an assessment
    @action(detail=True, methods=['POST'])
    def questions(self, request, pk=None):
        # print(request.data)
        ids = request.data['quesID']
        assess = get_object_or_404(Assessment, pk=pk)
        chosen_difficulty = get_difficulty(request)
        # print(chosen_difficulty)
        questions = assess.question.filter( difficulty_level = chosen_difficulty ).exclude(id__in=[x for x in ids if x is not None])
        # print( len( questions ) )
        # questions = assess.question.all()
        question = questions.order_by("?").first()
        serializer = QuestionSerializer(question)
        # print(serializer.data)
        return Response(serializer.data)

    # get all options of an assessment question
    @action(detail=True, methods=['get'])
    def get_ques_options(self, request, pk=None):
        question = get_object_or_404(Question,pk=pk)
        # print(question)
        ques_options = QuesOption.objects.filter(question = question)
        # print(ques_options)
        ques_option_serializer = QuesOptionSerializer(ques_options, many=True)
        # print(ques_option_serializer.data)
        ques_option_data = ques_option_serializer.data
        serializer = []
        for per_ques_opt in ques_option_data:
            # print(per_ques_opt['option_id'])
            option = get_object_or_404(Option,pk = per_ques_opt['option_id']) 
            # print(option)
            ret = {'option_id': per_ques_opt['option_id'], 'description' : option.description}
            # print(ret)
            serializer.append(ret)
            
        # print(serializer)
        return Response(serializer)

    # get answer for a certain question & answer  
    ## create a new assessment
    @action(detail=True, methods=['POST'])
    def get_right_answer(self,request,pk):
        data = request.data
        # print(data)
        question = get_object_or_404(Question, pk = data['ques_id']) 
        option = get_object_or_404(Option, pk = data['option_id']) 
        ques_option = QuesOption.objects.filter(question = question, option = option)
        ques_option_serializer = QuesOptionSerializer(ques_option, many = True)
        # print(ques_option_serializer.data)
        return Response( ques_option_serializer.data[0]['is_correct'] )

    # check if assessment is passed
    @action(detail=True, methods=['POST'])
    def assessment_result(self,request,pk):
        data = request.data
        user = request.user
        print(user)
        print(data)
        assessment_given = get_object_or_404(Assessment, pk=data['assessment'] )

        userassessment = UserAssessment.objects.create(
            assessment = assessment_given,
            user = request.user
        )

        userassessment.passed_by = False
        userassessment.taken_by = datetime.datetime.now()
        
        
        if (data['points'] * 100.0 / data['total_points'] >= pass_percentage):
            userassessment.passed_by = True
            # serializer = UserAssessmentSerializer(userassessment)  
            # print(serializer.data)
            return Response("Passed")

        # serializer = UserAssessmentSerializer(userassessment)  
        # print(serializer.data)
        return Response("Failed")
        




    # ## get all questions of an assessment
    # @action(detail=True, methods=['get'])
    # def ques_options(self, request, pk=None):
    #     question = get_object_or_404(Question, pk=pk)
    #     ques_options = QuesOption.objects.
    #     serializer = QuestionSerializer(questions, many=True)
    #     print(serializer.data)
    #     return Response(serializer.data)


    
    

    

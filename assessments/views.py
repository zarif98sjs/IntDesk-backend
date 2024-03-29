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
import itertools
from itertools import chain
from users.models import User
from django.db.models import Case, When


# Create your views here.
pass_percentage = 70.0

def get_difficulty( request ):
    # print("inside difficulty function")
    # print(request.data)
    available_difficulty = ['E', 'M', 'H']
    limit = 5
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
        print("Create Questions")
        print(serializer)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    # add options to an assessment
    @action(detail=True, methods=['post'])
    def options(self, request, pk):
        
        data = request.data
        print("Create Options")
        print(data)
        question = get_object_or_404(Question, pk=data['ques'])
        option = Option.objects.create(
            description = data['option_description'],
        )
        option.save()
        serializer = OptionSerializer(option)   
        # print("Option Serializer")
        # print(serializer.data)
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
        print(data)
        if data.get('skill_name') is not None: assessment.skill_name = data['skill_name']
        if data.get('image_link') is not None: assessment.image_link = data['image_link']
        # update passed_by and taken by of an assessment
        if data.get('passed_by') is not None: assessment.passed_by =  int( data['passed_by'] )
        if data.get('taken_by') is not None: assessment.taken_by =  int( data['taken_by'] )
        # ---------------------------------------------
        # assessment.roles = assessment.roles.def
        # setattr(assessment, assessroles, roles.default)

        ## clear assesment.roles
        assessment.roles.clear()
        for role in data.get('roles'):
            role, created = Role.objects.get_or_create(name=role)
            role.save()
            assessment.roles.add(role)
        
        assessment.save()
        serializer = AssessmentSerializer(assessment)
        return Response(serializer.data, status=status.HTTP_201_CREATED)


    ## get all assessments
    @action(detail=True, methods=['get'])
    def assessments(self, request, pk=None):
        print("user")
        # print(request.user)
        assessments = Assessment.objects.all()
        serializer = AssessmentSerializer(assessments, many=True)
        return Response(serializer.data)

    ## get all assessments
    @action(detail=False, methods=['get'])
    def get_assessment(self, request, pk=None):

        user_taken_assess = UserAssessment.objects.filter(user=self.request.user)
        # print(user_taken_assess.count())
        ids = user_taken_assess.values_list('assessment', flat=True) 
        print(ids)
        not_taken_assessments = Assessment.objects.exclude(id__in=[x for x in ids if x is not None])
        print("hel")
        preserved = Case(*[When(pk=pk, then=pos) for pos, pk in enumerate(ids)])
        print(type(preserved))
        print(preserved)
        print(ids)
        if len(ids) == 0:
            taken_assessments = Assessment.objects.none()
        else:
            taken_assessments = Assessment.objects.filter(pk__in = ids ).order_by(preserved)
        # print(taken_assessments)
        # print(not_taken_assessments)
        user_taken_assess_serializer = UserAssessmentSerializer(user_taken_assess, many = True)

        user_status = [True] * taken_assessments.count()
        length = taken_assessments.count()
        
        # print(type(user_taken_assess_serializer.data))
        
        for i in range( len( user_taken_assess_serializer.data ) ):
            # print(user_taken_assess_serializer.data[i]['assessment'])
            if( user_taken_assess_serializer.data[i]['passed'] == False ):
                user_status[i] = user_taken_assess_serializer.data[i]['taken_time']
        
        user_status += [False] * not_taken_assessments.count() 
        print("user status")
        print(user_status)
        print(taken_assessments)
        print(not_taken_assessments)
        # assessments = taken_assessments.union( not_taken_assessments )
        assessments = list(itertools.chain(taken_assessments, not_taken_assessments))
        print(assessments)
        serializer = AssessmentSerializer(assessments, many=True)
        # print(type(serializer.data))
        print("Final Serializer")
        print(serializer.data)
        return Response({'assess': serializer.data, 'status': user_status})
        # return Response(serializer.data)


    # get recommended assessments
    @action(detail=False, methods=['get'])
    def get_recommended(self, request):
        user_taken_assess = UserAssessment.objects.filter(user=self.request.user)
        ids = user_taken_assess.values_list('assessment', flat=True) 
        not_taken_assessments = Assessment.objects.exclude(id__in=[x for x in ids if x is not None])

        # Recommend using previous given tests
        taken_assessments = Assessment.objects.filter(pk__in = user_taken_assess.values_list('assessment', flat=True) ).all()
        # print(taken_assessments )
        taken_assess_serializer = AssessmentSerializer( taken_assessments, many = True)
        # print( type( taken_assess_serializer.data ) )
        roles_list = []
        for i in range( len( taken_assess_serializer.data ) ):
            for role in taken_assess_serializer.data[i]['roles']:
                if role['id'] not in roles_list:
                    roles_list.append(role['id'])
       
        recommended_assessments = not_taken_assessments.filter( roles__in = roles_list )
        # print( recommended_assess_serializer.data )
        # Recommendation using user skills
        user = User.objects.get(id=request.user.id)
        if user.skills is not None:
            for skill in user.skills:
                skill_assess = not_taken_assessments.filter(skill_name__icontains = skill)
                recommended_assessments = recommended_assessments | skill_assess  
        recommended_assessments = recommended_assessments.distinct()
       
        if( recommended_assessments.count() < 5 ):
            ids = recommended_assessments.values_list('id', flat=True) 
            not_recommended_assessments = not_taken_assessments.exclude(id__in=[x for x in ids if x is not None]) 
            popular_assessments = not_recommended_assessments.order_by('-taken_by')
            # print("Popular")
            # print(popular_assessments)
            recommended_assessments = recommended_assessments.union( popular_assessments )
            # print(recommended_assessments)
        recommended_assessments = recommended_assessments[:5]

        recommended_assess_serializer = AssessmentSerializer( recommended_assessments, many = True)
        # print("Before returning")
        # print(recommended_assess_serializer.data)
        return Response(recommended_assess_serializer.data)


    # get user status on an assessment
    @action(detail=True, methods=['get'])
    def get_user_status(self, request, pk=None):
        user_assessment = UserAssessment.objects.filter(user=self.request.user, assessment = pk)
        if user_assessment.exists():
            # print(user_assessment)
            user_assess_serializer = UserAssessmentSerializer(user_assessment[0])
            if user_assess_serializer.data['passed'] == True:
                return Response("passed")
            else:
                return Response(user_assess_serializer.data['taken_time'])
        
        return Response("not taken")

    ## delete question
    @action(detail=True, methods=['DELETE'])
    def delete_question(self, request,pk=None):
        ques = get_object_or_404(Question,pk=pk)
        ques.delete()
        # ques.delete()
        ret = {'message': 'question deleted'}
        return Response(ret,status=status.HTTP_200_OK)

   

    ## get a random question of an assessment
    @action(detail=True, methods=['POST'])
    def questions(self, request, pk=None):
        # print(request.data)
        # print(pk)
        ids = request.data['quesID']
        assess = get_object_or_404(Assessment, pk=pk)
        chosen_difficulty = get_difficulty(request)
        # print(chosen_difficulty)
        questions = assess.question.filter( difficulty_level = chosen_difficulty ).exclude(id__in=[x for x in ids if x is not None])
        # print( len( questions ) )
        # questions = assess.question.all()
        # print(questions)
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
        print("called assessresult")
        assessment_given = get_object_or_404(Assessment, pk=data['assessment'] )
        print(assessment_given)
        userassessment, created = UserAssessment.objects.get_or_create(
            assessment = assessment_given,
            user = request.user
        )
        # print(type(userassessment))
        # print(len(userassessment))
        print(userassessment)
        
        if created == True:
            assessment_given.taken_by = assessment_given.taken_by + 1
        
        userassessment.passed = False
        userassessment.taken_time = datetime.datetime.now()
        
        
        if (data['points'] * 100.0 / data['total_points'] >= pass_percentage):
            userassessment.passed = True
            assessment_given.passed_by = assessment_given.passed_by + 1
            # serializer = UserAssessmentSerializer(userassessment)  
            # print(serializer.data)
            userassessment.save()
            assessment_given.save()
            return Response("Passed")

        # serializer = UserAssessmentSerializer(userassessment)  
        # print(serializer.data)
        userassessment.save()
        assessment_given.save()
        return Response("Failed")
        

   


class AssessmentMineList(generics.ListAPIView):
    # queryset = UserAssessment.objects.all()
    serializer_class = UserAssessmentSerializer
    
    def get_queryset(self):
        return UserAssessment.objects.filter(user=self.request.user)
 
    
class AssessmentUserList(generics.ListAPIView):
    serializer_class = UserAssessmentSerializer
    lookup_field = 'username'
    def get_queryset(self):
        return UserAssessment.objects.filter(user__username=self.kwargs['username'])
    

    

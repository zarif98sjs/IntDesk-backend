from django.urls import path, include
from rest_framework import routers
from problems.views import ProblemViewSet, ProblemMineList, BookMarkMineList, PopularProblemList, RecommendedProblemList
from django.contrib import admin
from django.urls import path

router = routers.DefaultRouter()
router.register('problem', ProblemViewSet)


urlpatterns = [
    path('', include(router.urls)),
    path('myproblems/', ProblemMineList.as_view()),
    path('mybookmarks/', BookMarkMineList.as_view()),
    path('popular/', PopularProblemList.as_view()),
    path('recommended/', RecommendedProblemList.as_view()),
    
]

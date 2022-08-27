from django.urls import path, include
from rest_framework import routers
from problems.views import ProblemViewSet, SolvedMineList, AttemptedMineList, BookMarkMineList, PopularProblemList, RecommendedProblemList
from django.contrib import admin
from django.urls import path

router = routers.DefaultRouter()
router.register('problem', ProblemViewSet)


urlpatterns = [
    path('', include(router.urls)),
    path('mysolved/', SolvedMineList.as_view()),
    path('mysolved/test_solutions', SolvedMineList.as_view()),
    path('myattempted/', AttemptedMineList.as_view()),
    path('mybookmarks/', BookMarkMineList.as_view()),
    path('popular/', PopularProblemList.as_view()),
    path('recommended/', RecommendedProblemList.as_view()),
    
]

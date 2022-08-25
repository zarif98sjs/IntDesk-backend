from django.urls import path, include
from rest_framework import routers
from django.contrib import admin
from django.urls import path
from assessments.views import AssessmentViewSet

router = routers.DefaultRouter()
router.register('assessment', AssessmentViewSet)


urlpatterns = [
    path('', include(router.urls)),
]
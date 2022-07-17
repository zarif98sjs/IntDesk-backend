from django.db import models
from django.conf import settings
from django.contrib.postgres.fields import ArrayField

class Assessment(models.Model):
    skill_name = models.CharField(max_length=100)
    passed_by = models.IntegerField(default=0)
    taken_by = models.IntegerField(default=0)    
    
    def __str__(self):
        return self.skill_name


class Question(models.Model):
    DIFFICULTY_LEVEL = (
        ('E', 'Easy'),
        ('M', 'Medium'),
        ('H', 'Hard'),
    )
    description = models.TextField()
    image_link = models.URLField(max_length = 200)
    time = models.IntegerField(default = 0)
    points = models.IntegerField(default = 0)
    difficulty_level = models.CharField(max_length = 1, choices = DIFFICULTY_LEVEL)
    
    def __str__(self):
        return self.description

class Option(models.Model):
    description = models.TextField()
    image_link = models.URLField(max_length = 200)

    def __str__(self):
        return self.description


class QuesOption(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE, null=False, related_name='quesoption')
    option = models.ForeignKey(Option, on_delete = models.PROTECT, null=False, related_name='quesoption')
    is_correct = models.BooleanField()

    def __str__(self):
        return self.question.description

class AssessQues(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE, null=False, related_name='assessques')
    assessment = models.ForeignKey(Assessment, on_delete=models.CASCADE, null=False, related_name='assessques')
    
    def __str__(self):
        return self.assessment.skill_name

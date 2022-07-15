from django.db import models
from django.conf import settings

class Company(models.Models):
    name = models.CharField(max_length=100)
    description = models.TextField()

    def __str__(self):
        return self.name

class Role(models.Models):
    name = models.CharField(max_length=100)
    description = models.TextField()

    def __str__(self):
        return self.name

class Category(models.Models):
    name = models.CharField(max_length=100)
    description = models.TextField()

    def __str__(self):
        return self.name

class SubCategory(models.Models):
    name = models.CharField(max_length=100)
    description = models.TextField()

    # one to many relation
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='subcategories', null=False)
    
    def __str__(self):
        return self.name

class Problem(models.Models):
    
    name = models.CharField(max_length=100)
    description = models.TextField()
    time_limit = models.CharField(max_length=20, default="1s")
    memory_limit = models.CharField(max_length=20, default="256MB")
    difficulty = models.CharField(max_length=20, default="Easy", choices=["Easy", "Medium","Hard"])
    submission_count = models.IntegerField(default=0)
    solve_count = models.IntegerField(default=0)

    # many to many relation fields
    companies = models.ManyToManyField(Company)
    roles = models.ManyToManyField(Role)
    subcategories = models.ManyToManyField(SubCategory)

    def __str__(self):
        return self.name

class InputOutput(models.Models):

    input = models.TextField()
    output = models.TextField()
    points = models.IntegerField(default=0)

    # one to many relation
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE, related_name='input_outputs', null=False)
    
    def __str__(self):
        return self.input


class BookMark(models.Models):
    date_added = models.DateTimeField(auto_now=True)

    # one to many relations
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='bookmarks')
    
    def __str__(self):
        return self.problem.name + " : " + self.user.username


class Solution(models.Models):
    code = models.TextField()
    language = models.CharField(max_length=20, default="c", choices=["c", "cpp", "java", "python"])
    runtime = models.CharField(max_length=20)
    memory_usage = models.CharField(max_length=20)
    solve_status = models.CharField(
        max_length=20, default="Pending", 
        choices=["Pending", "Accepted", "Wrong Answer", "Time Limit Exceeded", 
        "Memory Limit Exceeded", "Runtime Error", "Compile Error"]
    )
    
    # one to many relations
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, related_name='solutions')
    
    def __str__(self):
        return self.problem.name + " : " + self.user.name

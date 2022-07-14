from django.db import models
from sqlalchemy import desc

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
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='subcategories')

    def __str__(self):
        return self.name


class Problem(models.Models):
    name = models.CharField(max_length=100)
    description = models.TextField()
    time_limit = models.CharField(max_length=20, default="1s")
    memory_limit = models.CharField(max_length=20, default="256MB")
    difficulty = models.CharField(max_length=20, default="Easy", choices=["Easy", "Medium", "Hard"])
    submission_count = models.IntegerField(default=0)
    solve_count = models.IntegerField(default=0)

    def __str__(self):
        return self.name


class InputOutput(models.Models):
    input = models.TextField()
    output = models.TextField()
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE, related_name='input_outputs', null=False)
    points = models.IntegerField(default=0)

    def __str__(self):
        return self.input

    

class ProblemCompany(models.Models):
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE)
    company = models.ForeignKey(Company, on_delete=models.CASCADE)
    count = models.IntegerField(default=1)

    def __str__(self):
        return self.problem.name + " : " + self.company.name + " (" + str(self.count) + ")"


class ProblemRole(models.Models):
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE)
    role = models.ForeignKey(Role, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.problem.name + " : " + self.role.name


class ProblemSubCategory(models.Models):
    problem = models.ForeignKey(Problem, on_delete=models.CASCADE)
    subcategory = models.ForeignKey(SubCategory, on_delete=models.CASCADE)
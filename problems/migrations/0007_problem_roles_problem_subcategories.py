# Generated by Django 4.0.1 on 2022-07-30 18:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('problems', '0006_problem_companies'),
    ]

    operations = [
        migrations.AddField(
            model_name='problem',
            name='roles',
            field=models.ManyToManyField(related_name='problems', to='problems.Role'),
        ),
        migrations.AddField(
            model_name='problem',
            name='subcategories',
            field=models.ManyToManyField(related_name='problems', to='problems.SubCategory'),
        ),
    ]

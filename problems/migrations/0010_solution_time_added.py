# Generated by Django 4.0.1 on 2022-08-25 22:03

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('problems', '0009_alter_solution_language_alter_solution_solve_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='solution',
            name='time_added',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False),
        ),
    ]
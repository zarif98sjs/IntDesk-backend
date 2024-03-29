# Generated by Django 4.0.1 on 2022-08-21 08:00

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('assessments', '0007_userassessment'),
    ]

    operations = [
        migrations.AddField(
            model_name='userassessment',
            name='passed',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='userassessment',
            name='taken_time',
            field=models.DateTimeField(default=django.utils.timezone.now, editable=False),
        ),
    ]

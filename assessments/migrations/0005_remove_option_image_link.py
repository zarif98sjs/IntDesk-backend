# Generated by Django 4.0.1 on 2022-07-23 19:14

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('assessments', '0004_remove_question_image_link'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='option',
            name='image_link',
        ),
    ]

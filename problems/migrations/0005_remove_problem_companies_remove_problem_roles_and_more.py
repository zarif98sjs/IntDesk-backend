# Generated by Django 4.0.1 on 2022-07-30 17:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('problems', '0004_alter_inputoutput_problem'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='problem',
            name='companies',
        ),
        migrations.RemoveField(
            model_name='problem',
            name='roles',
        ),
        migrations.RemoveField(
            model_name='problem',
            name='subcategories',
        ),
    ]

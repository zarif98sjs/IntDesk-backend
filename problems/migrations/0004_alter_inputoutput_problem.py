# Generated by Django 4.0.1 on 2022-08-25 07:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('problems', '0003_alter_inputoutput_problem'),
    ]

    operations = [
        migrations.AlterField(
            model_name='inputoutput',
            name='problem',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='input_outputs', to='problems.problem'),
        ),
    ]

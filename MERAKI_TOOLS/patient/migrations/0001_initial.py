# Generated by Django 2.2.19 on 2022-10-18 14:28

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Patient',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('patientname', models.CharField(blank=True, default='', max_length=255, null=True, verbose_name='환자이름')),
            ],
        ),
    ]
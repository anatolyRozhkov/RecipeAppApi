# Generated by Django 3.2.18 on 2023-03-28 16:10

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_recipe'),
    ]

    operations = [
        migrations.RenameField(
            model_name='recipe',
            old_name='users',
            new_name='user',
        ),
    ]

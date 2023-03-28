# RecipeAppApi

Lint
docker-compose run --rm app sh -c "flake8"

Start Project
docker-compose run --rm app sh -c "django-admin startproject app ."
docker-compose up
http://127.0.0.1:8000/

Run tests
docker-compose run --rm app sh -c "python manage.py wait_for_db"
docker-compose run --rm app sh -c "python manage.py test"

Make migrations
docker-compose run --rm app sh -c "python manage.py makemigrations"
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"

Create superuser
docker-compose run --rm app sh -c "python manage.py createsuperuser"

Start new app
docker-compose run --rm app sh -c "python manage.py startapp user"

View API
http://127.0.0.1:8000/api/docs/
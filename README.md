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



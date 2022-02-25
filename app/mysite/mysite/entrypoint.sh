#! /bin/sh 

# This causes the script to fail on any error that's what you want so 
# Docker sees the failure. 
set -e 

# The migrate command is safe to re-run, but will fail if the Database isn't
# ready. It keeps this container from starting before the database.  
python3 ./manage.py migrate 

# This startup task can only run once. Subsequent runs will fail or cause a 
# problem. Using '|| true' suppresses the error.
python3 ./manage.py createsuperuser --no-input --email $DJANGO_ADMIN_EMAIL --username $DJANGO_ADMIN_USERNAME || true
# Don't forget to also set $DJANGO_SUPERUSER_PASSWORD in the container

# Start the application.
python3 ./manage.py runserver 0.0.0.0:8000
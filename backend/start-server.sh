#!/usr/bin/bash 

echo "Activating Virtual Environment"
source ./.venv/bin/activate

echo "Starting Server!!!"
echo " "

echo "Starting Redis-Server!"
# redis-server > /dev/null 2> /dev/null &
echo "Redis-Server Started!  "

echo " "

echo "Starting Celery Worker!"
# celery -A make_celery.celery_app worker \ 
#           --loglevel=info \
#           -P solo & 
echo "Celery Worker Started!  "

echo "Starting Celery Beat Schedule!"
# celery -A make_celery.celery_app \
#          beat \
#          --loglevel=info &
echo "Celery Beat Scheduled!  "

echo "Starting Flask Server!"
# python app.py > /dev/null 2> /dev/null &
echo "Flask Server Started!  "


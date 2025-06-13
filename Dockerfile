FROM python:3.6-slim
RUN pip install django==3.2
WORKDIR /App
COPY . .
RUN python manage.py migrate
CMD [ "python","manage.py","runserver","0:8000"]

FROM python:3.9-alpine

WORKDIR /app

COPY . /app

COPY requirements.txt /app

RUN pip install -r requirements.txt

#RUN pip install Flask
#RUN pip install WTForms
#RUN pip install SQLAlchemy
#RUN pip install bcrypt
#RUN pip install requests
#RUN pip install flask-heroku
#RUN pip install gunicorn

EXPOSE 5000

CMD ["python", "app.py"]
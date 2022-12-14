FROM python:3.8-slim-buster
ENV PYTHONUNBUFFERED 1
WORKDIR /app
ADD . /app
COPY ./requirement.txt /app/requirement.txt
RUN pip3 install -r requirements.txt
COPY . /app
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

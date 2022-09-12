FROM python:3.8-slim-buster
WORKDIR /app
COPY requirement.txt requirement.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

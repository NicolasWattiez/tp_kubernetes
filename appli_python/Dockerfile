# Dockerfile application python

FROM python:latest
RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install mariadb
COPY tp-sql/app-python /usr/src/app/
EXPOSE 5000
CMD ["python3", "/usr/src/app/main.py"]


# Dockerfile application python

FROM python:latest
ARG MARIADB_USER 
ARG MARIADB_PASSWORD 
ARG DB_HOST 
ARG DB_NAME

RUN apt-get update -y
RUN apt-get install -y python3-pip
RUN pip3 install mariadb
COPY tp-sql/app-python /usr/src/app/
RUN sed -i "s/'user' : 'admin'/'user' : '${MARIADB_USER}'/" /usr/src/app/config.py
RUN sed -i "s/'password' : 'password'/'password' : '${MARIADB_PASSWORD}'/" /usr/src/app/config.py
RUN sed -i "s/'host': 'localhost'/'host' : '${DB_HOST}'/" /usr/src/app/config.py
RUN sed -i "s/'database': 'parc_informatique'/'database' : '${DB_NAME}'/" /usr/src/app/config.py
EXPOSE 5000
CMD ["python3", "/usr/src/app/main.py"]


FROM gradle

RUN mkdir /opt/app

WORKDIR /opt/app
COPY app/tp-sql/requirements.txt requirements.txt

RUN apt update && apt install python3 python3-pip -y
RUN pip install --no-cache-dir -r requirements.txt

COPY /app/ .
COPY /build/build.gradle .

CMD gradle packageDistribution






# ENV FLASK_APP="main"



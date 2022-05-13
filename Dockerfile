FROM gradle
RUN mkdir /home/gradle/project
WORKDIR /home/gradle/project
COPY ./ /home/gradle/project

RUN apt update && apt install 



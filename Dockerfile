FROM ubuntu:latest
LABEL maintainer="gc986"
RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get install -y openjdk-11-jdk
COPY KtorTest ./server
CMD cd server && ./gradlew run
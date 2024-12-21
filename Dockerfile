FROM openjdk:latest

WORKDIR /app

COPY Sum.java .

RUN javac Sum.java

CMD ["java","Sum"]

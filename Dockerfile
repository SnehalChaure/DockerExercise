FROM maven:3.8-jdk-11
RUN mkdir /project
COPY ./javaapp/ /project
WORKDIR /project
RUN mvn clean package
CMD ["java", "-jar", "./target/helloworld-1.0-SNAPSHOT.jar"]

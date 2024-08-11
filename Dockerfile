#FROM openjdk:22
#COPY ./out/production/DockerHelloWorld/ /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java"  ,"HelloWorld"]

FROM openjdk:22
# Set the working directory in the container
WORKDIR /app

## Copy the current directory contents into the container at /app
#COPY . /app
#
## The application's jar file (replace with your jar file name)
#ARG JAR_FILE=hello-world.jar
#
## Add the application's jar file to the container
#ADD ${JAR_FILE} app.jar


COPY app.jar /app/app.jar


# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
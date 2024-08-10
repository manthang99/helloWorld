FROM openjdk:22
COPY ./out/production/DockerHelloWorld/ /tmp
WORKDIR /tmp
ENTRYPOINT ["java"  ,"HelloWorld"]
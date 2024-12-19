FROM ubuntu:22.04
RUN apt update && apt install openjdk-17-jdk openjdk-17-jre -y
COPY /var/lib/jenkins/workspace/new-java-project/target/hello-world-maven.war /tmp
EXPOSE 8080
CMD ["war", "/tmp/hello-world-maven.war"]

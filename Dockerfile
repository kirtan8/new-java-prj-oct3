FROM openjdk:17-alpine
WORKDIR /app
COPY /target/*.war /app/
CMD ["java", ".war", "app"]

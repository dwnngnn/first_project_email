# Giai đoạn 1: Biên dịch code Java bằng Maven
FROM maven:3.9-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Giai đoạn 2: Chạy ứng dụng bằng Tomcat 9
FROM tomcat:9.0-jdk21-openjdk-slim
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY --from=builder /app/target/first_project_email.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
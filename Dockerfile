FROM openjdk:8
COPY pom.xml .
ADD target/user-mysql.jar user-mysql.jar
ENTRYPOINT ["java", "-jar", "user-mysql"]
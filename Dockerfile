FROM openjdk:8
ADD target/user-mysql.jar user-mysql.jar
ENTRYPOINT ["java", "-jar", "user-mysql"]
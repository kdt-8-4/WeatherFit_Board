FROM openjdk:17-jdk

WORKDIR /app

COPY build/libs/*.jar app.jar

ENTRYPOINT ["java","-Duser.timezone=Asia/Seoul","-jar","app.jar"]

CMD ["nginx","-g","daemon off;"]
#使用的基础镜像
FROM java:8
COPY ./target/*.jar /app.jar
CMD ["--server.port=8080"]
ENTRYPOINT ["java","-jar","/app.jar"]
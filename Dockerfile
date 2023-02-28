FROM openjdk:9
COPY /target/hello-world-war-1.0.0.war  #hello-world-war-1.0.0.war
# ENTRYPOINT ["java", "-war", "hello-world-war-1.0.0.war"]

FROM maven:3-alpine

ENV container docker
WORKDIR /app/java-project
COPY ./ /app/java-project/
RUN mvn -B -DskipTests clean package 
RUN ./scripts/deliver.sh

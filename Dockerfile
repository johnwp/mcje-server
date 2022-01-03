FROM openjdk
WORKDIR /mcje
EXPOSE 25565/tcp
COPY minecraft_server.1.18.1.jar /mcje/minecraft_server.1.18.1.jar
COPY eula.txt /mcje/eula.txt
CMD ["java","-jar","/mcje/minecraft_server.1.18.1.jar"]

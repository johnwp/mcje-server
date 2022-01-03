FROM openjdk

ENV MCJE_HOME="/mcje" \
    DATA_PATH="/mcje/data" \
    SERVER_PORT="25565/tcp"

WORKDIR $MCJE_HOME

COPY minecraft_server.1.18.1.jar $MCJE_HOME/minecraft_server.1.18.1.jar
COPY eula.txt $MCJE_HOME/eula.txt
COPY server.properties $MCJE_HOME/server.properties

EXPOSE $SERVER_PORT
VOLUME $DATA_PATH

CMD ["java","-Xmx1024M","-Xms1024M","-jar","/mcje/minecraft_server.1.18.1.jar","nogui"]

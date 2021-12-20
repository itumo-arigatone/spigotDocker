FROM amazonlinux:2

RUN yum update -y && \
    yum install -y wget && \
    yum install -y tar && \
    yum install -y gzip

RUN mkdir -p /minecraft_data/minecraft && \
    mkdir /minecraft_data/java

WORKDIR /minecraft_data/java
RUN wget https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
RUN tar xvzf amazon-corretto-17-x64-linux-jdk.tar.gz -C /minecraft_data/java

ENV JAVA_HOME /minecraft_data/java/amazon-corretto-17.0.1.12.1-linux-x64
ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /minecraft_data/minecraft
RUN wget https://download.getbukkit.org/spigot/spigot-1.18.1.jar
RUN java -Xms1024M -Xmx1024M -jar /minecraft_data/minecraft/spigot-1.18.1.jar
RUN echo eula=true > /minecraft_data/minecraft/eula.txt

CMD java -Xms1024M -Xmx1024M -jar /minecraft_data/minecraft/spigot-1.18.1.jar &&\
    echo eula=true > /minecraft_data/minecraft/eula.txt && \
    java -Xms1024M -Xmx1024M -jar /minecraft_data/minecraft/spigot-1.18.1.jar

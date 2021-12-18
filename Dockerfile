FROM amazonlinux:2

wget https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.tar.gz
tar -zxvf amazon-corretto-17-x64-linux-jdk.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

wget https://download.getbukkit.org/spigot/spigot-1.18.1.jar
java -Xms1024M -Xmx1024M -jar spigot-1.18.jar nogui
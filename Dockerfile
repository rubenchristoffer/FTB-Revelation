FROM adoptopenjdk:8-jre
WORKDIR /root

RUN apt update
RUN apt install -qqy wget vim nano 
RUN wget -O install https://api.modpacks.ch/public/modpack/35/2059/server/linux
RUN chmod +x install && ./install 35 2059 --auto
RUN echo eula=true > eula.txt

CMD ./start.sh

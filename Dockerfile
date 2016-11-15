FROM node

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y software-properties-common && add-apt-repository ppa:wine/wine-builds && apt-get update && apt-get install -y --install-recommends winehq-devel

RUN npm install electron-packager -g

VOLUME /electron
WORKDIR /electron

CMD ['electron-packager']

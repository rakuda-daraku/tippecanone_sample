FROM ubuntu:18.10

# update
RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \
    && apt-get update && apt-get -y install git build-essential libsqlite3-dev zlib1g-dev

ENV LANG ja_JP.UTF-8

# TODO docker-compose化時に後で削除
RUN cd tmp

# tippecanoeをclone + tippecanoeのmake
RUN git clone https://github.com/mapbox/tippecanoe.git && cd tippecanoe && make -j && make install

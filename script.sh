#!/usr/bin/env bash


# openjdf-17-jre
read -p "NAME of the server: " NAME
mkdir $NAME
cd $NAME
wget "https://api.papermc.io/v2/projects/paper/versions/1.19/builds/61/downloads/paper-1.19-61.jar"
echo "java -Xmx1024M -Xms1024M -jar paper-1.19-61.jar" > start.sh
chmod +x ./start.sh
echo "eula=true" > eula.txt
cp ../server-default ./server.properties
read -p "will your server be in hardcore mode?" ISHARDCORE
read -p "whitelist enable?" WHITELISTENABLE
read -p "disallow cracked clients?" ONLINEMODE
read -p "seed?" SEED
read -p "difficulty?" DIFF
read -p "gamemode?" GAMEMODE

echo "hardcore=$ISHARDCORE" >> server.properties
echo "white-list=$WHITELISTENABLE" >> server.properties
echo "server-name=$NAME" >> server.properties
echo "motd=$NAME" >> server.properties
echo "online-mode=$ONLINEMODE" >> server.properties
echo "difficulty=$DIFF" >> server.properties
echo "level-seed=$SEED" >> server.properties
echo "gamemode=$GAMEMODE" >> server.properties
# sh start.sh

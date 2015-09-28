#!/bin/bash

sed -i -e 's#"displayName": "Aila"#"displayName": "Daddy"#g' ~/Library/Application\ Support/minecraft/launcher_profiles.json
open /Applications/Minecraft.app
processToKill=$(ps -ax | grep "[M]inecraft.app" | awk '{print $1;}')
echo "Killing process: ${processToKill}"
kill -9 "${processToKill}"
open /Applications/Minecraft.app
newProcess=$(ps -ax | grep "[M]inecraft.app" | awk '{print $1;}')
echo "New Process open ${newProcess}"
java -Xmx1024M -Xms1024M -jar minecraft_server.1.8.7.jar

#!/bin/bash
cd "$(dirname "$0")" || exit

curl -L -o openarena-0.8.8.zip https://downloads.sourceforge.net/project/oarena/openarena-0.8.8.zip
curl -L -o gamecode.zip https://files.poulsander.com/~poul19/public_files/oa/dev088/gamecode_nightly/openarena_gamecode_2024-05-14_d371ff1.zip

unzip openarena-0.8.8.zip
unzip gamecode.zip

mv openarena-0.8.8/baseoa .
mv openarena-0.8.8/missionpack .

rm -rf openarena-0.8.8* gamecode.zip

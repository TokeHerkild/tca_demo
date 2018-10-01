#!/bin/bash

echo Enter extKey:
read EXTKEY

extKey=${EXTKEY/\_/\-}

arr=(${EXTKEY//_/ })
printf -v EXTNAME %s "${arr[@]^}"

echo Enter description:
read DESCRIPTION

# Updating composer.json
sed -i "s/{extKey}/$extKey/" composer.json
sed -i "s/{EXTKEY}/$EXTKEY/" composer.json

sed -i "s/{EXTNAME}/$EXTNAME/" composer.json

sed -i "s/{DESCRIPTION}/$DESCRIPTION/" composer.json

echo composer.json updated.


echo
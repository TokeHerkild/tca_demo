#!/bin/bash

echo Enter extKey:
read EXTKEY

extKey=${EXTKEY/\_/\-}
echo $extKey

echo Enter ExtName:
read EXTNAME

echo Enter description:
read DESCRIPTION

sed -i "s/{extKey}/$extKey/" composer.json
sed -i "s/{EXTKEY}/$EXTKEY/" composer.json

sed -i "s/{EXTNAME}/$EXTNAME/" composer.json

sed -i "s/{DESCRIPTION}/$DESCRIPTION/" composer.json

echo composer.json updated.
echo
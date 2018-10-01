#!/bin/bash

Enter extKey:
read EXTKEY

Enter ExtName (UpperCamelCase):
read EXTNAME

Enter description:
read DESCRIPTION

sed -i 's/{EXTKEY}/$EXTKEY/' composer.json

sed -i 's/{EXTNAME}/$EXTNAME/' composer.json

sed -i 's/{DESCRIPTION}/$DESCRIPTION/' composer.json
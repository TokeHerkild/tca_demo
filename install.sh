#!/bin/bash

echo Extension title in TYPO3 BE:
read TITLE

echo Author:
read AUTHOR

echo Author email:
read AUTHOREMAIL

echo Version:
read VERSION

echo Constraints composer:
read COMPOSERCONSTRAINTS

echo Constraints TYPO3:
read TYPOCONSTRAINTS

echo Enter extKey:
read EXTKEY

extKey=`echo $EXTKEY|tr '_' '-'`

arr=(${EXTKEY//_/ })
printf -v EXTNAME %s "${arr[@]^}"

echo Enter description:
read DESCRIPTION

# Updating composer.json
sed -i "s/{extKey}/$extKey/" composer.json
sed -i "s/{EXTKEY}/$EXTKEY/" composer.json
sed -i "s/{EXTNAME}/$EXTNAME/" composer.json
sed -i "s/{DESCRIPTION}/$DESCRIPTION/" composer.json
sed -i "s/{COMPOSERCONSTRAINTS}/$COMPOSERCONSTRAINTS/" composer.json
echo composer.json updated.

# Updating ext_emconf.php
sed -i "s/{DESCRIPTION}/$DESCRIPTION/" ext_emconf.php
sed -i "s/{TITLE}/$TITLE/" ext_emconf.php
sed -i "s/{AUTHOR}/$AUTHOR/" ext_emconf.php
sed -i "s/{AUTHOREMAIL}/$AUTHOREMAIL/" ext_emconf.php
sed -i "s/{VERSION}/$VERSION/" ext_emconf.php
sed -i "s/{TYPOCONSTRAINTS}/$TYPOCONSTRAINTS/" ext_emconf.php
echo ext_emconf.php updated

echo
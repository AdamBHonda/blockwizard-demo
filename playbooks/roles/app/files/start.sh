#!/bin/bash
DIRECTORY=`dirname $0`
cd $DIRECTORY
java -Dspring.profiles.active=$1 -jar $DIRECTORY/blockwizard-0.1.2.jar

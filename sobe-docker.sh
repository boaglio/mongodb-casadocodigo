#!/bin/bash

MONGODB_VERSAO=4.2

DIR_LOCAL=`pwd`

figlet subindo Docker MongoDB $MONGODB_VERSAO
docker run -p 27017:27017 -v $DIR_LOCAL/mongodb-data:/data/db mongo:$MONGODB_VERSAO

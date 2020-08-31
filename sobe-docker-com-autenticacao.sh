#!/bin/bash

MONGODB_VERSAO=4.2

DIR_LOCAL=`pwd`

figlet subindo Docker MongoDB $MONGODB_VERSAO

docker run -p 27017:27017 -v $DIR_LOCAL/mongodb-data:/data/db -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=admin  mongo:$MONGODB_VERSAO

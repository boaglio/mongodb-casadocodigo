#!/bin/bash

MONGODB_VERSAO=4.2

DIR_LOCAL=`pwd`

figlet subindo Docker MongoDB $MONGODB_VERSAO - ReplicaSet 1

docker rm mongo-rs1

docker run --name mongo-rs1 --hostname mongo-rs1 --net boaglio-mongo-cluster -p 27017:27017 -v $DIR_LOCAL/mongodb-data-rs0-0:/data/db  mongo:$MONGODB_VERSAO mongod --replSet rs0

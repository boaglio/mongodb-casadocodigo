#!/bin/bash

MONGODB_VERSAO=4.2

DIR_LOCAL=`pwd`

figlet subindo Docker MongoDB $MONGODB_VERSAO - ReplicaSet 2

docker rm mongo-rs2

docker run --name mongo-rs2 --hostname mongo-rs2 --net boaglio-mongo-cluster -p 27018:27017 -v $DIR_LOCAL/mongodb-data-rs0-1:/data/db mongo:$MONGODB_VERSAO mongod --replSet rs0

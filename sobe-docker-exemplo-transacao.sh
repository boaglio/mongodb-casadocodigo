#!/bin/bash

MONGODB_VERSAO=4.2

DIR_LOCAL=`pwd`

figlet subindo Docker MongoDB $MONGODB_VERSAO - exemplo transação

docker rm mongo-exemplo-transacao

docker run --name mongo-exemplo-transacao --hostname mongo-exemplo-transacao --net boaglio-mongo-cluster -p 27017:27017 -v $DIR_LOCAL/mongodb-data-exemplo-transacao:/data/db  mongo:$MONGODB_VERSAO mongod --replSet rs

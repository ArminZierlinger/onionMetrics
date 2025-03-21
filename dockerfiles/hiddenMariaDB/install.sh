#!/bin/bash

docker build -t hidden-mariadb .
docker run --name hiddenMariadb -d hidden-mariadb
docker exec -it hiddenMariadb bash

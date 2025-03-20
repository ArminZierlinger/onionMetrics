#!/bin/bash

docker build -t hidden-mariadb .
docker run --name hiddenMariadb -d hidden-mariadb tail -f /dev/null
docker exec -it hiddenMariadb bash

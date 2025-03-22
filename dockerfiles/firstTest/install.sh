#!/bin/bash

docker build -t first-test .
docker run --name firstTest -d first-test
docker exec -it firstTest bash

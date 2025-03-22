#!/bin/bash

service mariadb start
service tor start

tail -f /dev/null

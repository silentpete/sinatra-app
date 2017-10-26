#!/usr/bin/env bash

docker stop sinatra
docker rm sinatra
docker run -d -t --name=sinatra -p 4567:4567 sinatra:latest /opt/sinatra/start_service.sh

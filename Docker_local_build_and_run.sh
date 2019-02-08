#!/usr/bin/env bash

./build_app.sh                                      &&
docker image build -t spring_boot .                 &&
docker container run -d  -p 8080:8080 spring_boot
#!/usr/bin/env bash

gradle wrapper && ./gradlew :main-app:bootJar && docker image build -t spring_boot . && docker container run -d  -p 8080:8080 spring_boot
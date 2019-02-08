#!/usr/bin/env bash

gradle wrapper && ./gradlew :clean && ./gradlew :main-app:bootJar
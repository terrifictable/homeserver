#!/bin/bash

# Build image
docker build -t mkdocs:v1 --build-arg=USER=$(id -u) .

# Create new "project"
docker run -it -v ./notes:/build mkdocs:v1 new /build

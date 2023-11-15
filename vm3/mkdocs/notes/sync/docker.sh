#!/bin/bash

docker build -t sync:v1 .

docker run -it -d -v /root/mkdocs/notes/docs:/wd/docs sync:v1

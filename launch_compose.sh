#!/bin/bash

INPUT_FILE=docker-compose.yml
GENERATED_FILE=compose_generated.yml
ENV_DEPENDENT_MODULE_FOLDER=/lib/modules/$(uname -r):/lib/modules/$(uname -r)
sed "s;{{MODULE_FOLDER}};${ENV_DEPENDENT_MODULE_FOLDER};g" < $INPUT_FILE > $GENERATED_FILE

docker-compose  -f $GENERATED_FILE  up 

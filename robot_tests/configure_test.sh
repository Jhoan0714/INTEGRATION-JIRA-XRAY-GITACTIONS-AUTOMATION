#!/bin/sh -
CONT_NAME=test-githubactions-individual
BUILD_NUMBER=99
LOG_PATH=log/cameo
LOGO_CDFI=https://cdn-source-cameo.lendingfront.com/static/images/resources/qa/login-logo.png
NAME_REPORT=cameo.html

for f in $(find /robot_tests -type f -mmin -1); do
        mv $f ${f%.*}.robot
    docker run --name "$CONT_NAME" --shm-size=256m -i \
        -v $(pwd):/home \
        -e BUILD_NUMBER=$BUILD_NUMBER \
        -e RESOURCES_PATH=/home/resources \
        lendingfront/robotframework-selenium:$(cat container-version) \
            $LOG_PATH \
            ${f%.*}.robot \
            $LOGO_CDFI \
            $NAME_REPORT
done
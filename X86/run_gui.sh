#!/bin/bash
docker run -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v $(pwd):/cv \
    --name opencv3 philipz/opencv3_python2.7

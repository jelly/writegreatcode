#!/bin/bash

python -m http.server&

while inotifywait -e modify -e create -r .; do gitbook build; done

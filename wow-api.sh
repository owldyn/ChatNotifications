#!/bin/bash

if [ -d wow-api ]; then
  git clone https://github.com/Gethe/wow-ui-source wow-api
else
  (cd wow-api && git pull)
fi

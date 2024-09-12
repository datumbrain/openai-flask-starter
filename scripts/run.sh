#!/usr/bin/env bash

if [ ! -d "venv" ]; then
    echo -e "Please create a virtual environment first.\nRun 'python -m venv venv'."
    exit 1
fi

if [ -z $VIRTUAL_ENV ]; then
    echo -e "Please activate the virtual environment first.\nRun 'source venv/bin/activate'."
    exit 1
fi

python -m pip install -r requirements.txt

export $(grep -v '^#' .env | xargs)

gunicorn -w 4 main:app --bind 0.0.0.0:$HTTP_PORT

#!/bin/bash

# Build the container containing both the web and db images
docker-compose build

# Create the database
docker-compose run web rake db:create

# Start the webserver and connect to the database
docker-compose up
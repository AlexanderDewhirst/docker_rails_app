# Containerize Ruby on Rails with a Postgres DB with Docker 

This project creates a basic Ruby on Rails project with a Postgres database in a Docker application. This project assumes you have Docker, Ruby on Rails, Ruby, and Postgres installed. I am currently using Docker (19.03.5), Ruby (2.6.3), Rails (6.0.2.1), and Postgres (12.2).

> The techniques used in this project may not be considered best practice. I'm still learning and would love feedback!

# Multi-Container Architecture
* **web**: A Ruby on Rails application running from Ruby 2.6.3 official image.
* **db**: A Postgres database running from Postgres 12.2 official image.

# Get Started
1. Clone the repository
```
git clone git@github.com:AlexanderDewhirst/docker_rails_app.git
```
2. Navigate to the repository base directory
```
cd docker_rails_app
```
2. Enter your postgres credentials in database.yml and docker-compose.yml
3. Build the docker application
```
docker-compose build
```
4. Create the database in docker
```
docker-compose run web rake db:create
```
5. Start the rails server using the CMD in the Dockerfile with
```
docker-compose up
```

# Hello DevOps
This is a hello world application built with Ruby/Sinatra.

# TASK #1: Build a docker image
Build the docker image hello-rb that:
* Uses the latest ruby image of the 2.7.x version
* Install the ruby dependencies
* Run the application from /var/www which must be owned by www-data
* Set the runtime command:
  `bundle exec rackup --host 0.0.0.0 -p 4567`

# TASK #2: 
Build a docker-compose file with the following services:
* hello: Uses the image hello-rb and serves the web content on port 80 on the local machine
* postgres: Uses the latest image of the 12.x version
* migrations: Re-uses the image hello-rb to initialize the database with the command
  `rake db:migrate && rake db:seed`

NOTE: The ENV vars for the `hello-rb` container are on the file `env-dev`

# Hello DevOps
Hello DevOps is a hello world is an application build with Ruby/Sinatra.

# TASK #1: Build a docker image
Build the docker container hello-rb that:
* Uses the latest ruby image of the 2.7.x version
* Install the ruby dependencies
* Serve the content from /var/www with www-data as the owner
* Set the runtime command:
  `bundle exec rackup --host 0.0.0.0 -p 4567`

# TASK #2: 
Build a docker-compose file with the following services:
* hello-rb: Uses the image hello-rb and serves conten on port 80
* postgres: Uses the latest image of the 12.x version
* migrations: Uses the image hello-rb and initializas the db
  `rake db:migrate && rake db:seed`

NOTE: The ENV vars for the `hello-rb` container are on the file `env-dev`


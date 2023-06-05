FROM ruby:2.7.8

LABEL description="This is the exam for the Wishpond DevOps School"

MAINTAINER Cristian Ramirez <cristian@wishpond.com>

RUN bundle config --global frozen 1

WORKDIR /var/www

COPY Gemfile Gemfile.lock ./
RUN bundle install

RUN chown -R www-data:www-data /var/www

COPY . .

CMD bundle exec rackup --host 0.0.0.0 -p 4567


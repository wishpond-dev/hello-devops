FROM ruby:2.7.8
LABEL description="Devops Exam Image"
MAINTAINER Waqas <waqas@brax.io>
EXPOSE 4567

WORKDIR /var/www

COPY Gemfile* ./
RUN bundle install

COPY . ./

RUN chown -R www-data:www-data /var/www

USER www-data

ENTRYPOINT ["bundle", "exec", "rackup --host 0.0.0.0 -p 4567"]

## (build image command) added for logs
# docker build -t hello-rb .

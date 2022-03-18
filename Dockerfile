FROM ruby:2.7.5

RUN mkdir -p /var/www
RUN chown www-data:www-data /var/www
USER  www-data

COPY --chown=www-data:www-data . /var/www
WORKDIR /var/www
RUN chmod 700 application-startup.sh
RUN bundle install

ENTRYPOINT ["./application-startup.sh"]
CMD ["no_migrate"]

#! /bin/bash

declare -r db_migration=$1
declare -r error_message="The first argument should be either 'migrate' or 'no_migrate'"

if [[ "$db_migration" == "migrate" ]]; then
  echo "Running database migration..."
  rake db:migrate && rake db:seed && bundle exec rackup --host 0.0.0.0 -p 4567
elif [[ "$db_migration" == "no_migrate" ]]; then
    echo "Database migration won't run"
  bundle exec rackup --host 0.0.0.0 -p 4567
else
  echo "$error_message"
  exit 1
fi

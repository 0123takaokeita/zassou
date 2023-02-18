#!/usr/bin/env bash
# exit on error

set -o errexit

bundle install
bundle exec rake asset:precompile
bundle exec rake asset:clean
bundle exec rake db:migrate

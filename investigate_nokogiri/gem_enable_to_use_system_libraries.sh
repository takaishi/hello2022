#!/bin/bash

echo "enable to use system libraries"

gem uninstall -a --force   --format-executable -x nokogiri

cd use_gem/1.11.3
bundle config --local build.nokogiri --use-system-libraries
bundle install
bundle exec ruby run.rb

cd ../../use_gem/1.12.5
bundle config --local build.nokogiri --use-system-libraries
bundle install
bundle exec ruby run.rb

cd ../../use_gem/1.13.6
bundle config --local build.nokogiri --use-system-libraries
bundle install
bundle exec ruby run.rb

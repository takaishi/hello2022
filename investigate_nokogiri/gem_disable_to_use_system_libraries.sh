#!/bin/bash

echo "disable to use system libraries"

gem uninstall -a --force   --format-executable -x nokogiri

cd use_gem/1.11.3
rm -rf .bundle
bundle install
bundle exec ruby run.rb

cd ../../use_gem/1.12.5
rm -rf .bundle
bundle install
bundle exec ruby run.rb

cd ../../use_gem/1.13.6
rm -rf .bundle
bundle install
bundle exec ruby run.rb

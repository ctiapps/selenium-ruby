#!/usr/bin/env bash

docker run -d -p 127.0.0.1:5901:5901 -p 127.0.0.1:6901:6901 --name=selenium-ruby andrius/selenium-ruby
sleep 10

docker exec -ti selenium-ruby /app/watir-firefox.rb

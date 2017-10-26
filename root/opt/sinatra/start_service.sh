#!/usr/bin/env sh

#TODO: create DEBUG option

ruby ./sinatra.rb &

shutdown() {
  echo 'exiting'
  exit 0
}

trap 'shutdown' SIGTERM
while true; do read; done

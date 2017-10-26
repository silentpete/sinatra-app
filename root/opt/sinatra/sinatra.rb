#!/usr/bin/env ruby

require 'sinatra'
require 'rest-client'
require 'logger'

$stdout.sync = true
$stderr.sync = true

set :logging, true
set :bind, '0.0.0.0'
set :port, 4567

get '/' do
  'Hello, from sinatra!'
end

post '/' do
  data = JSON.parse(request.body.read)
  logger.info(data)
end

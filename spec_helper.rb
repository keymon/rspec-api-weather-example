# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# Require this file using `require "spec_helper.rb"` to ensure that it is only
# loaded once.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

require 'rack/test'
require 'sinatra'
require 'webmock/rspec'
require './api.rb'

WebMock.disable_net_connect!(allow_localhost: true)

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

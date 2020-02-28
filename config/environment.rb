ENV['SINATRA_ENV'] ||= "development"
export RUBYOPT="-W0"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'

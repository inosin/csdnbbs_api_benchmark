# This file is used by Rack-based servers to start the application.

require 'bundler/setup'

env = ENV['RACK_ENV'] || 'development'
Bundler.require(:default, env.to_sym)
require './config/environment'
require_all '../models/*'
require_all 'app/apis/*'

use ActiveRecord::ConnectionAdapters::ConnectionManagement
run TopicsAPI

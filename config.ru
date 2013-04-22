require 'rubygems'
require 'bundler'

Bundler.require

require './investigator.rb'

run Sinatra::Application

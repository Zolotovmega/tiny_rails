require 'tiny_rails'

$LOAD_PATH << TinyRails.root

Dir["app/**/*.rb"].each { |f| require f }

ENV['RACK_ENV'] ||= 'development'
Bundler.require(:default, ENV["RACK_ENV"])

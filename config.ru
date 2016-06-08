require "rubygems"
require "bundler"
Bundler.require

#models
require "./models/drink"

#controllers
require "./app"
use Rack::MethodOverride

run DrinksApp

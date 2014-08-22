ENV['RACK_ENV'] = 'test'

require "sinatra/activerecord"

require "sqlite3"

require_relative "../models/plant.rb"
require_relative "../models/tip.rb"
require_relative "../models/yield.rb"

RSpec.configure do |config|
  Plant.delete_all
  Tip.delete_all
  Yield.delete_all
end
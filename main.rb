require 'rubygems'
require 'bundler'

Bundler.require

set :server, 'webrick'

require_relative "./models/plant.rb"
require_relative "./models/tip.rb"
require_relative "./models/yield.rb"
require_relative "./routes/plants.rb"
require_relative "./routes/tips.rb"
require_relative "./routes/yields.rb"

get "/" do

  erb :home
end

get "/plants/:id/recipes/:num" do
  @plant = Plant.find(params[:id])
  r = Allrecipes.new
  @num = params[:num].to_i
  @recipes = r.ingredient(@plant.name, { page: @num })
  
  erb :recipes
end


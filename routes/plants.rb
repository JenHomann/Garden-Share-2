get "/plants" do
  @plants = Plant.all
  
  erb :"plants/plant_index"
end

get "/plants/new" do
  
  erb :"plants/plant_new"
end

post "/plants/create" do
  @plant = Plant.create(name: params[:name], fruitbearing: true)
  
  erb :"plants/plant_create"
end

get "/plants/:id/edit" do
  @plant = Plant.find(params[:id])
  
  erb :"plants/plant_edit"
end

post "/plants/:id/update" do
  binding.pry
  @plant = Plant.find(params[:id])
  @plant.update_attributes({name: params[:name], fruitbearing: params[:fruitbearing]})
  
  erb :"plants/plant_update"
end

post "/plants/:id/delete" do
  @plant = Plant.find(params[:id])
  @plant.tips.each do |tip|
    tip.plants.delete(@plant)
  end
  @plant.delete

  erb :"plants/plant_delete"
end

get "/plants/:id" do
  @plant = Plant.find(params[:id])
  
  erb :"plants/plant_detail"
end
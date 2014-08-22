get "/yields" do
  @yields = Yield.all
  @plants = Plant.all
  
  erb :"yields/yield_index"
end

get "plants/:id/new_yield" do
  @plant = Plant.find(params[:id])
  
  erb :"yields/yield_new"
end

post "/plants/:id/create_yield" do
  @plant = Plant.find(params[:id])
  @yield = Yield.create(plant_id: params[:id], number: params[:number])
  
  erb :"yields/yield_create"
end

get "/yields/:id/edit" do
  @yield = Yield.find(params[:id])
  
  erb :"yields/yield_edit"
end

post "/yields/:id/update" do
  @yield = Yield.find(params[:id])
  @yield.update_attributes({plant_id: params[:plant_id], number: params[:number]})
  
  erb :"yields/yield_update"
end

post "/yields/:id/delete" do
  @yield = Yield.find(params[:id]).delete
  
  erb :"yields/yield_delete"
end

get "/yields/:id" do
  @yield = Yield.find(params[:id])
  @plants = Plant.all
  
  erb :"yields/yield_detail"
end
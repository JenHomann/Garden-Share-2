get "/tips" do
  @tips = Tip.all
  
  erb :"tips/tip_index"
end

get "/plants/:id/new_tip" do
  @plant = Plant.find(params[:id])
  @tips = Tip.all
  
  erb :"tips/tip_new"
end

post "/plants/:id/create_tip" do
  binding.pry
  @plant = Plant.find(params[:id])
  @tip = Tip.create(info: params[:info])
  @plant.tips << @tip
  
  erb :"tips/tip_create"
end

#TODO - figure out better UI for tip creation/deletion/edit
get "/tips/:id/edit" do
  @tip = Tip.find(params[:id])
  @plants = Plant.all
  
  erb :"tips/tip_edit"
end

post "/tips/:id/update" do
  @tip = Tip.find(params[:id])
  @tip.update_attributes({info: params[:info]})
  
  erb :"tips/tip_update"
end

post "/tips/:id/delete" do
  @tip = Tip.find(params[:id]).delete
  
  erb :"tips/tip_delete"
end

get "/tips/:id" do
  @tip = Tip.find(params[:id])
  
  erb :"tips/tip_detail"
end

require "spec_helper"

describe Plant do
    
  it "should do return whether a plant is fruitbearing or not" do
    a = Plant.create({name: "apple", fruitbearing: 0})
    expect(a.fruitbearing?).to eq("no")
  end
  
  it "should sum a given plant's yields" do
    a = Plant.create({name: "apple", fruitbearing: 0})
    b = Yield.create({plant_id: 1, number: 20})
    expect(Plant.find(1).total).to eq(20)
  end
end
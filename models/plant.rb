class Plant < ActiveRecord::Base
  has_and_belongs_to_many :tips
  has_many :yields
  
  validates :name, uniqueness: true
  
  def edit_fruitbearing(input)
    if input == "no"
      fruitbearing = 0
    else
      fruitbearing = 1
    end
    self.save
  end
  
  # Returns a boolean reflecting whether the given fruitbearing attribute is set to 1 or 0
  def fruitbearing?
    if fruitbearing == 1
      "yes"
    else
      "no"
    end
  end
  
  def total
    sum = 0
    yields.each do |p|
      sum = sum += p.number
    end
    sum
  end
  
end
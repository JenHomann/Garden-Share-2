class Yield < ActiveRecord::Base
  belongs_to :plant
  
  validates :number, numericality: true
  
end
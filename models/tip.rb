class Tip < ActiveRecord::Base
  has_and_belongs_to_many :plants
  validates :info, uniqueness: true
  
  # def self.already_a_tip?(input)
  #   a = self.where({info: input}).length
  #   a > 0
  # end
  # def already_a_tip?(input)
  #   already_a_tip = []
  #   Tip.all.each do |tip|
  #     if tip.info == input
  #       already_a_tip << tip
  #     else
  #     end
  #   end
  #
  #   if already_a_tip == []
  #     false
  #   else
  #     true
  #   end
  # end

end
class Recipe < ActiveRecord::Base

  ####################
  ### Associations ###
  ####################

  has_many :authorships
  has_many :brewers, :through => :authorships

  accepts_nested_attributes_for :authorships

end

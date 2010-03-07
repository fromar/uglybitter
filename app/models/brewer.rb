class Brewer < ActiveRecord::Base

  ####################
  ### Associations ###
  ####################

  has_many :authorships
  has_many :recipes, :through => :authorships

end

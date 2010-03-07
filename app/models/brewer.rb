class Brewer < ActiveRecord::Base

  ####################
  ### Associations ###
  ####################

  has_many :authorships
  has_many :recipes, :through => :authorships

  ###################
  ### Validations ###
  ###################

  validates_presence_of :name

end

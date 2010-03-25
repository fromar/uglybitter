class Recipe < ActiveRecord::Base

  ####################
  ### Associations ###
  ####################

  has_many :authorships
  has_many :brewers, :through => :authorships
  has_many :adjunct_additions
  has_many :hops_additions
  has_many :pitching_yeasts
  has_many :malt_additions
  
  accepts_nested_attributes_for :authorships

end

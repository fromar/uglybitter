class Authorship < ActiveRecord::Base

  ####################
  ### Associations ###
  ####################

  belongs_to :recipe
  belongs_to :brewer

end

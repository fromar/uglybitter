# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create some Brewers
omar = Brewer.create(:name => 'Omar')
lern = Brewer.create(:name => 'Lern')
northern_brewer = Brewer.create(:name => 'Northern Brewer')

# Give them some Recipes
moose_knuckle = Recipe.create(:name => "Moose Knuckle", 
                              :description => "Medium-bodied, sweet brown ale with delicous caramel overtones")
omar.recipes << moose_knuckle
lern.recipes << moose_knuckle

banana_hammock = Recipe.create(:name => "Banana Hammock", 
                              :description => "Over-the-top wheat beer. Heavy in the mouth, heavy in the thong")
omar.recipes << banana_hammock
lern.recipes << banana_hammock

exploding_tripel = Recipe.create(:name => "Exploding Tripel", 
                              :description => "Duck and Cover! This uber-sweet brew explodes in approximately 30 days.")
omar.recipes << exploding_tripel
lern.recipes << exploding_tripel

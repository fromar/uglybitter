class CreateRecipes < ActiveRecord::Migration
  def self.up
    create_table :recipes do |t|
      t.string :name, :null => false
      t.text :description
      t.boolean :private, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :recipes
  end
end

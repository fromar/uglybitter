class CreateMaltTypes < ActiveRecord::Migration
  def self.up
    create_table :malt_types do |t|
      t.string :name
      t.text :description
      t.string :color
      t.integer :lovibond
      t.string :character
      t.boolean :extract

      t.timestamps
    end
  end

  def self.down
    drop_table :malt_types
  end
end

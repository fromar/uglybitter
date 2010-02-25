class CreateYeastTypes < ActiveRecord::Migration
  def self.up
    create_table :yeast_types do |t|
      t.string :name
      t.float :attenuation
      t.float :flocculation
      t.integer :min_temp
      t.integer :max_temp
      t.string :type
      t.string :format
      t.string :manufacturer
      t.string :origin
      t.boolean :is_lager

      t.timestamps
    end
  end

  def self.down
    drop_table :yeast_types
  end
end

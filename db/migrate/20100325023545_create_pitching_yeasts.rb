class CreatePitchingYeasts < ActiveRecord::Migration
  def self.up
    create_table :pitching_yeasts do |t|
      t.integer :yeast_type
      t.integer :parent_batch

      t.timestamps
    end
  end

  def self.down
    drop_table :pitching_yeasts
  end
end

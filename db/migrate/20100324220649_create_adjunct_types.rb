class CreateAdjunctTypes < ActiveRecord::Migration
  def self.up
    create_table :adjunct_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :adjunct_types
  end
end

class CreateHopsTypes < ActiveRecord::Migration
  def self.up
    create_table :hops_types do |t|
      t.string :name
      t.float :alpha
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hops_types
  end
end

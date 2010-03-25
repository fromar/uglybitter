class CreateHopsAdditions < ActiveRecord::Migration
  def self.up
    create_table :hops_additions do |t|
      t.integer :hops_type
      t.integer :time
      t.integer :amount
      t.boolean :secondary

      t.timestamps
    end
  end

  def self.down
    drop_table :hops_additions
  end
end

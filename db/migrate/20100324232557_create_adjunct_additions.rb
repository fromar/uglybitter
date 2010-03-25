class CreateAdjunctAdditions < ActiveRecord::Migration
  def self.up
    create_table :adjunct_additions do |t|
      t.integer :adjunct_type_id
      t.integer :time
      t.float :amount
      t.boolean :secondary

      t.timestamps
    end
  end

  def self.down
    drop_table :adjunct_additions
  end
end

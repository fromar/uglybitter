class CreateMaltAdditions < ActiveRecord::Migration
  def self.up
    create_table :malt_additions do |t|
      t.integer :malt_type
      t.integer :time
      t.float :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :malt_additions
  end
end

class CreateBrewers < ActiveRecord::Migration
  def self.up
    create_table :brewers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :brewers
  end
end

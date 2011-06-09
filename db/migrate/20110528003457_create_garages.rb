class CreateGarages < ActiveRecord::Migration
  def self.up
    create_table :garages do |t|
      t.string :name
      t.references :service

      t.timestamps
    end
  end

  def self.down
    drop_table :garages
  end
end

class CreateAccessorydatas < ActiveRecord::Migration
  def self.up
    create_table :accessorydatas do |t|
      t.string :name
      t.references :accessory

      t.timestamps
    end
  end

  def self.down
    drop_table :accessorydatas
  end
end

class CreateStorecars < ActiveRecord::Migration
  def self.up
    create_table :storecars do |t|
      t.string :name
      t.string :color
      t.references :store

      t.timestamps
    end
  end

  def self.down
    drop_table :storecars
  end
end

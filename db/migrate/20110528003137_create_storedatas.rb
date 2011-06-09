class CreateStoredatas < ActiveRecord::Migration
  def self.up
    create_table :storedatas do |t|
      t.string :name
      t.string :email
      t.references :store

      t.timestamps
    end
  end

  def self.down
    drop_table :storedatas
  end
end

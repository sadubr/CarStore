class CreateGaragedatas < ActiveRecord::Migration
  def self.up
    create_table :garagedatas do |t|
      t.string :name
      t.references :garage

      t.timestamps
    end
  end

  def self.down
    drop_table :garagedatas
  end
end

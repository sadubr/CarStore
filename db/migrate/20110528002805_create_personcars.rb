class CreatePersoncars < ActiveRecord::Migration
  def self.up
    create_table :personcars do |t|
      t.string :name
      t.string :color
      t.references :person

      t.timestamps
    end
  end

  def self.down
    drop_table :personcars
  end
end

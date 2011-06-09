class CreatePersondatas < ActiveRecord::Migration
  def self.up
    create_table :persondatas do |t|
      t.string :first_name
      t.string :last_name
      t.references :person

      t.timestamps
    end
  end

  def self.down
    drop_table :persondatas
  end
end

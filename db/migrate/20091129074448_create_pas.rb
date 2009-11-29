class CreatePas < ActiveRecord::Migration
  def self.up
    create_table :pas do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :pas
  end
end

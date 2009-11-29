class CreateFieldsPas < ActiveRecord::Migration
  def self.up
    create_table :fields_pas, :id => false do |t|
      t.integer :pa_id
      t.integer :field_id
      
      t.timestamps
    end
    
    add_index :fields_pas, :pa_id
    add_index :fields_pas, :field_id
    
  end

  def self.down
    drop_table :fields_pas
  end
end

class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :value
      t.integer :field_type_id
      t.integer :section_id
      t.timestamps
    end
    
    add_index :fields, :field_type_id
    add_index :fields, :section_id
  end
end

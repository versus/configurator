class CreateFieldTypes < ActiveRecord::Migration
  def change
    create_table :field_types do |t|
      t.string :name
      t.string :value_default
      t.string :value_validate
      t.integer :length_min, :default => 1
      t.integer :length_max, :default => 20
      t.timestamps
    end

  end
end

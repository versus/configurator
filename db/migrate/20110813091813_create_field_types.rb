class CreateFieldTypes < ActiveRecord::Migration
  def change
    create_table :field_types do |t|
      t.string :name
      t.string :value_default
      t.string :value_validate
      t.integer :len_min, :default => 1
      t.integer :len_max, :default => 20
      t.timestamps
    end

  end
end

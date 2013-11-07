class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :category, null: false
      t.decimal :capacity
      t.string :unit
      t.string :label, null: false
      t.string :comment

      t.timestamps
    end
  end
end

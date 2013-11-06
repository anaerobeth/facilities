class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :category
      t.decimal :capacity
      t.string :unit
      t.string :label
      t.string :comment

      t.timestamps
    end
  end
end

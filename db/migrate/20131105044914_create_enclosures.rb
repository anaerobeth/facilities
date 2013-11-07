class CreateEnclosures < ActiveRecord::Migration
  def change
    create_table :enclosures do |t|
      t.string :category, null: false
      t.string :label
      t.string :comment
      t.integer :location_id, null: false

      t.timestamps
    end
  end
end

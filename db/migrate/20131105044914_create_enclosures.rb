class CreateEnclosures < ActiveRecord::Migration
  def change
    create_table :enclosures do |t|
      t.string :category
      t.string :label
      t.string :comment
      t.integer :location_id

      t.timestamps
    end
  end
end

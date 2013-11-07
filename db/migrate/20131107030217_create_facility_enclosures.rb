class CreateFacilityEnclosures < ActiveRecord::Migration
  def change
    create_table :facility_enclosures do |t|
      t.integer :facility_id, null: false
      t.integer :enclosure_id, null: false
      t.string :position, null: false

      t.timestamps
    end
  end
end

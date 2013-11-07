class CreateFacilityLocations < ActiveRecord::Migration
  def change
    create_table :facility_locations do |t|
      t.integer :facility_id, null: false
      t.integer :location_id, null: false
      t.string :position, null: false

      t.timestamps
    end
  end
end

class CreateFacilityLocations < ActiveRecord::Migration
  def change
    create_table :facility_locations do |t|
      t.integer :facility_id
      t.integer :location_id
      t.string :position

      t.timestamps
    end
  end
end

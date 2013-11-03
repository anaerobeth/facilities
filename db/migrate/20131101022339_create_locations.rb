class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :category, null: false
      t.string :label, null: false
      t.integer :landlord_id, null: false
      t.decimal :longitude, null: false
      t.decimal :latitude, null: false
      t.string :address, null: false
      t.string :floor
      t.string :otherid1
      t.string :otherid2
      t.string :comments

      t.timestamps
    end
  end
end

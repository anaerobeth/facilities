class Location < ActiveRecord::Base
  belongs_to :landlord,
    inverse_of: :location

  VALID_CATEGORIES = ["Manhole", "Hut", "Building", "Rack"]
  validates_inclusion_of :category,
    in: VALID_CATEGORIES
  validates_presence_of :label
  validates_numericality_of :landlord_id
  validates_presence_of :address
  validates_numericality_of :longitude
  validates_numericality_of :latitude

end

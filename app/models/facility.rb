class Facility < ActiveRecord::Base
  has_many :enclosures,
    through: :facility_enclosures,
    inverse_of: :facility

  has_many :locations,
    through: :facility_locations,
    inverse_of: :facility

  validates_presence_of :category
  validates_numericality_of :capacity
  validates_presence_of :label
end

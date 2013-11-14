class FacilityEnclosure < ActiveRecord::Base
  belongs_to :facility
  belongs_to :enclosure

  validates_presence_of :facility
  validates_presence_of :enclosure
end

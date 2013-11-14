class FacilityLocation < ActiveRecord::Base
  belongs_to :facility
  belongs_to :location

  validates_presence_of :facility
  validates_presence_of :location

end

class Facility < ActiveRecord::Base
  validates_presence_of(:category)
  validates_numericality_of(:capacity)

  validates_presence_of(:label)

end

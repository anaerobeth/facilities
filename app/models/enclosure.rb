class Enclosure < ActiveRecord::Base
  belongs_to :location
  VALID_CATEGORIES = ["Splice Case RM","Splice Case MH", "Splice Case PM" ]
  validates_presence_of :category
  validates_inclusion_of :category,
    in: VALID_CATEGORIES
  validates_presence_of :location
end

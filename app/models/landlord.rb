class Landlord < ActiveRecord::Base
  belongs_to :location,
    inverse_of: :landlord

  def has_minimum_information
    if first_name && last_name
      return true
    elsif company_name
      return true
    else
      return false
    end
  end

end

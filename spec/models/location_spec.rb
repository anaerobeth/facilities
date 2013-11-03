require 'spec_helper'

describe Location do

  it { should have_valid(:category).when("Manhole", "Hut", "Building", "Rack") }
  it { should_not have_valid(:category).when("", "bananas", nil) }
  it { should validate_presence_of(:label) }
  it { should validate_presence_of(:landlord) }
  it { should validate_numericality_of(:longitude) }
  it { should validate_numericality_of(:latitude) }
  it { should validate_presence_of(:address) }

end

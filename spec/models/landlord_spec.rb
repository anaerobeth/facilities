require 'spec_helper'

describe Landlord do
  it "should be valid when first and last name is supplied" do
    landlord = Landlord.create(first_name: "Bob", last_name: "Smith")
    expect(landlord.has_minimum_information).to be_true
  end

  it "should be valid when company is supplied" do
    landlord = Landlord.create(company_name: "Capitol")
    expect(landlord.has_minimum_information).to be_true
  end

  it "should not be valid when minimum information is not supplied" do
    landlord = Landlord.create(first_name: "Bob")
    expect(landlord.has_minimum_information).to be_false
  end
end

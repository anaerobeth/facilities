require 'spec_helper'

feature 'user adds a landlord', %Q{
  As user
  I want to add a landlord
  So that I can link landlords to locations
  } do

  # Acceptance Criteria:
  # I must specify first_name and last_name OR company_name
  # If I don't, I get an error notification and I am prompted to re-enter the required information

  scenario 'creates a landlord with valid information' do
    prev_landlord_count = Landlord.count

    visit new_landlord_path
    fill_in 'First name', with: "Bob"
    fill_in 'Last name', with: "Smith"
    click_button 'Create Landlord'

    expect(page).to have_content("You added a landlord")
    expect(Landlord.count).to eql(prev_landlord_count + 1)
  end

  # scenario 'fails to create a landlord by giving incomplete information' do
  #   prev_landlord_count = Landlord.count

  #   visit new_landlord_path
  #   click_button 'Create Landlord'

  #   expect(page).to_not have_content("You added a landlord")
  #   expect(Landlord.count).to eql(prev_landlord_count)
  # end
end
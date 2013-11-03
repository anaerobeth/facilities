require 'spec_helper'

feature 'user adds a location', %Q{
  As user
  I want to add a location
  So that I can track cable locations
  } do

  # Acceptance Criteria:
  # I must specify category, label, landlord, longitude, latitude and address.
  # I can optionally specify floor, other_ID1, other_ID2, cross street and comments.
  # If I don't, I get an error notification and I am prompted to re-enter the required information

  scenario 'creates a location with valid information' do
    prev_location_count = Location.count

    visit new_location_path
    select 'Manhole'
    fill_in 'Label', with: "Smith"
    fill_in 'Landlord', with: 1
    fill_in 'Longitude', with: 76.3
    fill_in 'Latitude', with: 20.1
    fill_in 'Address', with: "15 Main St."
    fill_in 'Floor', with: "4th"
    fill_in 'Otherid1', with: "East"
    fill_in 'Otherid2', with: "Hallway"
    fill_in 'Comments', with: "Reliable service"
    click_button 'Add Location'
        save_and_open_page

    expect(page).to have_content("You added a location")
    expect(Location.count).to eql(prev_location_count + 1)
  end
end
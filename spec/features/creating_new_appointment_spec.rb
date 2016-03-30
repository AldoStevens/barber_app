require "rails_helper"


RSpec.feature "Creating a new appointment" do 

  scenario "a user creates a new appointment" do 
    visit "/"

    click_link "New appointment"
    fill_in "Name", with: "Aldo"
    fill_in "Last name", with: "Stevens"
    fill_in "Date", with: "30/3/2016"
    fill_in "Time", with: "10:54"

    click_button "Create Appointment"

    # expect(page).to have_content("Appointment has been created")
    expect(page.current_path).to eq(appointments_path)
  end 

  scenario "a user fails to create a new appointment" do 
  	visit "/"

    click_link "New appointment"
    fill_in "Name", with: ""
    fill_in "Last name", with: ""
    fill_in "Date", with: ""
    fill_in "Time", with: ""

    click_button "Create Appointment"

    expect(page).to have_content("Appointment has not been created")
    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Last name can't be blank")
    expect(page).to have_content("Phone number can't be blank")
    expect(page).to have_content("Date can't be blank")
    expect(page).to have_content("Time can't be blank")
  end
end
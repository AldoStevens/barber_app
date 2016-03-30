require "rails_helper"


RSpec.feature "Creating a new appointment" do 

  scenario "a user make an appointment" do 
    visit "/"

    click_link "New appointment"
    fill_in "Name", with: "Aldo"
    fill_in "Last name", with: "Stevens"
    fill_in "Date", with: "30/3/2016"
    fill_in "Time", with: "10:54"

    click_button "Create Appointment"
  end 
end
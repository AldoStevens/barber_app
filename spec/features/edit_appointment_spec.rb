require "rails_helper"

RSpec.feature "Edits an appointment" do 
	before do 
		@appointment = Appointment.create(Name: "aldo", Last_name: "stevens", Phone_number: "0896548925", Date: "29/3/2016", Time: "15:30")
	end

	scenario "a user update an appointment" do 
		visit "/"

		click_link @appointment.Name 
		click_link "Edit appointment"
	
		fill_in "Name", with: "Aldo"
    fill_in "Last name", with: "Stevens"
    fill_in "Phone number", with: "0849826584"
    fill_in "Date", with: "30/3/2016"
    fill_in "Time", with: "10:54"

    click_button "Update Appointment"

    expect(page).to have_content("Appointment has been updated")
    expect(page.current_path).to eq(appointments_path)
  end

  # scenario "a user fails to update an appointment" do 
		# visit "/"

		# click_link @appointment.Name 
		# click_link "Edit appointment"
	
		# fill_in "Name", with: ""
  #   fill_in "Last name", with: "Stevens"
  #   fill_in "Phone number", with: "0849826584"
  #   fill_in "Date", with: "30/3/2016"
  #   fill_in "Time", with: "10:54"

  #   click_button "Update Appointment"

  #   expect(page).to have_content("Appointment has not been updated")
  #   expect(page.current_path).to eq(appointments_path)
  # end
end


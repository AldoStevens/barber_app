require "rails_helper"

RSpec.feature "Deleting an Appointment" do 

	before do 
		@appointment = Appointment.create(Name: "aldo", Last_name: "stevens", Phone_number: "0896548925", Date: "29/3/2016", Time: "15:30")
	end

	scenario "A user deletes an appointment" do 
		visit "/"

		click_link @appointment.Name 
		click_link "Delete appointment"

		expect(page).to have_content("Appointment has been deleted")
		expect(current_path).to eq(appointments_path)
	end
end
require "rails_helper"

RSpec.feature "Listing Appointments" do 

	before do 
		@appointment1 = Appointment.create(Name: "aldo", Last_name: "stevens", Phone_number: "0896548925", Date: "29/3/2016", Time: "15:30")
		@appointment2 = Appointment.create(Name: "hangula", Last_name: "lucas", Phone_number: "0759842658", Date: "27/3/2016", Time: "10:15")
	end

	scenario "Listing all appointments" do 
		visit "/"

		expect(page).to have_content(@appointment1.Name)
		expect(page).to have_content(@appointment1.Date)
		expect(page).to have_content(@appointment2.Name)
		expect(page).to have_content(@appointment2.Date)
		expect(page).to have_link(@appointment1.Name)
		expect(page).to have_link(@appointment2.Name)
	end
end
class Appointment < ActiveRecord::Base
	validates :Name, presence: true
	validates :Last_name, presence: true
	validates :Phone_number, presence: true
	validates :Date, presence: true
	validates :Time, presence: true
end

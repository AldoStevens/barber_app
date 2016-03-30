class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :Name
      t.string :Last_name
      t.string :Phone_number
      t.date :Date
      t.time :Time

      t.timestamps null: false
    end
  end
end

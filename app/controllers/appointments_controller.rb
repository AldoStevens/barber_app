class AppointmentsController < ApplicationController
  def index
    @appointment = Appointment.all
  end

  def new
    @appointment = Appointment.new(params[:id])
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      flash[:success] = "Appointment has been created"
      redirect_to appointments_path
    else 
      flash[:danger] = "Appointment has not been created"
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end


  private

  def appointment_params
    params.require(:appointment).permit(:Name, :Last_name, :Phone_number, :Date, :Time)
  end
end

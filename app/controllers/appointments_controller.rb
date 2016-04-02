class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
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
      flash.now[:danger] = "Appointment has not been created"
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
     @appointment = Appointment.find(params[:id])
    if @appointment.update(appointment_params)
      flash[:success] = "Appointment has been updated"
      redirect_to appointments_path
    else
      flash.now[:danger] = "Appointment has not been update"
      render :edit
    end
  end


  private

  def appointment_params
    params.require(:appointment).permit(:Name, :Last_name, :Phone_number, :Date, :Time)
  end
end

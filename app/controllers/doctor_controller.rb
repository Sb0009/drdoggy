# frozen_string_literal: true
class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show edit update destroy ]
  before_action :adminAuthorized, only: %i[ new edit create update destroy ]

  # GET /doctors or /doctors.json
  def index
    @doctors = Doctor.all

    if params[:city].present?
      @doctors = @doctors.where(city_id: params[:city])
    end

    if params[:city].present?
      @doctors = @doctors.where(city_id: params[:city])
    end

  end

  # GET /doctors/1 or /doctors/1.json
  def show
  end

  # GET /doctors/new
  def new
    @doctors = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
    @appointment = get_current_appointments(@doctor)
  end

  # POST /doctors or /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to doctor_url(@doctor), notice: "Doctor was successfully created." }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctors/1 or /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        if @doctor.capacity == get_current_bookings(@doctor)
          @doctor.status = "busy"
        else
          @doctor.status = "available"
        end
        @doctor.save
        format.html { redirect_to doctor_url(@doctor), notice: "Doctor was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1 or /doctors/1.json
  def destroy
    @doctor.destroy

    respond_to do |format|
      format.html { redirect_to doctors_url, notice: "Doctor profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def get_current_bookings (doctor)
    begin
      return Appointment.where(doctor_id: doctor.id).map{|x| x.patients}.inject {|v, n| v+n}
    rescue
      return 0
    end
  end

  # Only allow a list of trusted parameters through.
  def doctor_params
    params.require(:doctor).permit(:id, :last_name, :city_id,
                                   :speciality,  :status, :city, :city)
  end
end
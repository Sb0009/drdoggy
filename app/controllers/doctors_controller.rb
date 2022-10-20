# frozen_string_literal: true

class DoctorsController < ApplicationController
  before_action :authenticate_user!
  def new
    @doctor = Doctor.new
  end

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.all
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def create
    doctor = Doctor.new
    doctor.name = params[:doctor][:name]

    doctor.speciality = params[:doctor][:speciality
    ]
    doctor.save
    redirect_to doctors_path
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(name: params[:doctor][:name], city:
      params[:doctor][:city])
      redirect_to doctors_path
    else
      render 'edit'
    end
  end

  def destroy
    @doctor = Doctor.find(params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end

  def disable
    doctor = Doctor.find_by(id: params[:id])
    redirect_to doctors_path if doctor.update(status: false)
  end

  private

  def authenticate_user!
    # code here
  end
end

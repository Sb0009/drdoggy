# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @doctors = Doctor.all
  end
end

def new
  @doctor = Doctor.new
end

def create
  @doctor = User.new(user_params)
  if @doctor.save
    flash[:success] = 'Welcome to the DrDoggy App!'
    redirect_to @doctor
  else
    render 'new'
  end
end

def doctor_params
  params.require(:doctor).permit(:name, :email, :password,
                                 :password_confirmation)
end

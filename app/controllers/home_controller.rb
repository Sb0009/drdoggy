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
  flash.now[:alert] = "msg"
  render :index
  @doctor = User.new(user_params)
  # if @doctor.save
  #   flash.now[:success] = 'Welcome to the DrDoggy App!'
    redirect_to @doctor
    render 'new'
  end


def doctor_params
  params.require(:doctor).permit(:name, :email, :password,
                                 :password_confirmation)
end

# frozen_string_literal: true

module Api
  module V1
    class DoctorsController < ApplicationController
      before_action :authorized, except: %i[index]
      before_action :set_doctor, only: %i[show update destroy]

      def index
        @doctors = Doctor.all
        doctor_serializer = pars_json
        json_response 'Showing Doctors', true, { doctor: doctor_serializer }, :ok
      end

      def show
        doctor_serializer = pars_json
        json_response 'Showing Doctor Details', true, { doctor: doctor_serializer }, :ok
      end

      def pars_json
        # code here
      end

      def create
        @user = User.find(params[:user_id])
        if @user.admin == true
          @doctor = @user.doctors.create(doctor_params)
          doctor_serializer = pars_json
          if @doctor.valid?
            json_response 'Doctor created!', true, { doctor: doctor_serializer }, :ok
          else
            json_response @doctor.errors, false, {}, :bad_request
          end
        else
          json_response 'You are not an admin', false, {}, :unauthorized
        end
      end

      def update
        if @doctor.update(doctor_params)
          doctor_serializer = pars_json
          json_response 'Doctor updated!', true, { doctor: doctor_serializer }, :ok
        else
          json_response @doctor.errors, false, {}, :unprocessable_entity
        end
      end

      def destroy
        @doctor.destroy
      end

      private

      def authorized
        # code here
      end

      def set_doctor
        @doctor = Doctor.find(params[:id])
        return if @doctor.present?

        json_response 'Cannot get doctor', false, {}, :not_found
      end

      def doctor_params
        params.permit(:name, :image, :speciality, :location, :user_id)
      end
    end
  end
end

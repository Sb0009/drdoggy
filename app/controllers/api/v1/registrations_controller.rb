# frozen_string_literal: true

module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      before_action :ensure_params_exist, only: :create

      def encode_token
        # code here
      end

      def create
        @user = User.new user_params
        if @user.save
          token = encode_token
          json_response 'Signed Up Successfully', true, { user: UserSerializer.new(@user), token: }, :ok
        else
          json_response 'Email already exists or invalid email or password', false, {}, :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :username)
      end

      def ensure_params_exist
        return if params[:user].present?

        json_response 'Missing params', false, {}, :bad_request
      end
    end
  end
end

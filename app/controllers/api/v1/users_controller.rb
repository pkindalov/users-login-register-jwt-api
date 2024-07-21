module Api
  module V1
    class UsersController < ApplicationController
      before_action :authenticate_request!

      def update
        if @current_user.update(user_params)
          render json: { message: 'Profile updated successfully' }, status: :ok
        else
          render json: { errors: @current_user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        if @current_user.destroy
          render json: { message: 'Profile deleted successfully' }, status: :ok
        else
          render json: { errors: @current_user.errors.full_messages }, status: :unprocessable_entity
        end
      end


      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end

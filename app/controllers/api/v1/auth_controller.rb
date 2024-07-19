module Api
  module V1
    class AuthController < ApplicationController
      def register
        user = User.new(user_params)
        if user.save
          render json: { token: encode_token(user_id: user.id) }, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def login
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
          render json: { token: encode_token(user_id: user.id) }, status: :ok
        else
          render json: { errors: ['Invalid email or password'] }, status: :unauthorized
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end

      def encode_token(payload)
        JWT.encode(payload, Rails.application.secrets.secret_key_base, 'HS256')
      end

    end
  end
end

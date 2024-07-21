# frozen_string_literal: true

class ApplicationController < ActionController::API
  before_action :authenticate_request!

  private

  def authenticate_request!
    token = request.headers['Authorization']

    if token.present?
      begin
        decoded_token = JWT.decode(token, Rails.application.credentials.secret_key_base)
        user_id = decoded_token.first['sub']
        @current_user = User.find(user_id) if user_id
      rescue JWT::DecodeError
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    else
      render json: { error: 'Missing token' }, status: :unauthorized
    end
  end
end

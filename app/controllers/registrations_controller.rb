class RegistrationsController < ApplicationController
  respond_to :json
  def create
    user = User.create(user_params) 
    if user.valid?
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: { id: user.id, email: user.email, key: token }
    else
      render json: { errors: "NO." }, status: :not_acceptable
    end
  end
  private
  def user_params
    params.permit(:email, :password)
  end
end

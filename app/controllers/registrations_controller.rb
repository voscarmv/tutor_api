class RegistrationsController < ApplicationController
  respond_to :json
  def create
    err = ''
    begin
      user = User.create(user_params) 
    rescue Exception => e
      err =  e
    end
    if user == nil
      render json: { exception: err }
    elsif user.valid?
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: { id: user.id, email: user.email, key: token }
    else
      render json: { exception: "User parameters not valid. Please change email and/or password." }, status: :not_acceptable
    end
  end
  private
  def user_params
    params.permit(:email, :password)
  end
end

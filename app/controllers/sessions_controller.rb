class SessionsController < ApplicationController
  respond_to :json
  def create
    user = User.find_by(email: user_params['email']) 
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {id: user.id, email: user.email, key: token};
    else
      render json: {failure: "Log in failed! Username or password invalid!"}
    end
  end
  def destroy
    @current_user_id = nil
    render json: { message: "logged out" }
  end
  private
  def user_params
    params.permit(:email, :password)
  end
end

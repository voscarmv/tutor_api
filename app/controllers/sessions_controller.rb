class SessionsController < Devise::SessionsController
  respond_to :json
  private
  def respond_with(resource, _opts = {})
    puts "THIS IS THE RESOURCE ID"
    puts !resource.id.nil?
    if !resource.id.nil?
      puts "IM IN!"
      render json: resource
    else
      render json: {
        status: 401,
        message: "Please check your credentials and try again."
      }, status: :unauthorized
    end
    # render json: resource
 end 
  def respond_to_on_destroy
    if current_user
      render json: {
        status: 200,
        message: "logged out successfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "Couldn't find an active session."
      }, status: :unauthorized
    end
  end
end

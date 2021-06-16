class SessionsController < Devise::SessionsController
  respond_to :json
  private
  def respond_with(resource, _opts = {})
    render json: {
    status: {code: 200, message: 'Logged in successfully.'},
    data: 'agusuiegusu'
    }
  end 
  def respond_to_on_destroy
    head :no_content
  end
end

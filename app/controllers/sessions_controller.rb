class SessionsController < Devise::SessionsController
  respond_to :json
  private
  def respon_with(resource, _opts={})
    render json: resources
  end
  def respond_to_on_destroy
    head :no_content
  end
end

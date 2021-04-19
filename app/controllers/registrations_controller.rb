class RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    p "HELLO!!!"
    p sign_up_params
    build_resource(sign_up_params)
    resource.save!
    render json: resource, status: :created
  end
end

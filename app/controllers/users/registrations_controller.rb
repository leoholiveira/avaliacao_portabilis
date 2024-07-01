# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  protect_from_forgery with: :null_session
  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  private

  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      render json: resource.errors, status: :unprocessable_entity
    end
  end

  def sign_up_params
    params.require(:user).permit(%i[name email password password_confirmation role active])
  end
end

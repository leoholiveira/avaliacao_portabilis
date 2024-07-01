class UsersController < ApplicationController
  include Pundit
  respond_to :json

  def index
    render json: { users: Users::SearchUserService.new(params[:type]).call }
  end

  def edit
    @user = authorize User.find(params[:id])
  end

  def update
    if Users::UpdateUserService.new(params).call
      render json: { success: true }
    else
      render json: { success: false, status: :unprocessable_entify }
    end
  end

  def destroy
    if Users::DeleteUserService.new(params[:id]).call
      render json: { success: true }
    else
      render json: { success: false, status: :unprocessable_entify }
    end
  end
end

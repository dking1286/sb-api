class Api::V1::RolesController < ApplicationController
  def show
    @role = Role.find(params[:id])
    render json: @role
  end
end

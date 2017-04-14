class Api::V1::CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @companies = @companies.with_roles if params[:has_roles].present?
  end
end

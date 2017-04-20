Rails.application.routes.draw do
  require 'api_version'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiVersion.new(1, true) do
      resources :companies, only: [:index, :show], controller: 'companies'
      resources :roles, only: [:show], controller: 'roles'
      resources :skills, only: [:index, :show], controller: 'skills'
    end
  end
end

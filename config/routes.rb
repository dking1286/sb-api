Rails.application.routes.draw do
  require 'api_version'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiVersion.new(1, true) do
      resources :companies, only: [:index, :show], controller: 'companies'
    end
  end
end

Rails.application.routes.draw do
 
    namespace :api,  defaults: {format: :json} do
      namespace :v1 do
      # We are going to list our resources here
        resources :users, only: [:show]
      end

    end
end

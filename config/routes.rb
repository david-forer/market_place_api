Rails.application.routes.draw do
 
    namespace :api,  defaults: {format: :json} do
      namespace :v1 do
      # We are going to list our resources here
        resources :users, only: %i[show create update destroy]
        resources :tokens, only: [:create]
        resources :products
        resources :orders, only: %i[index show create]
      end
    end
end

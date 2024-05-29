Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'exercises/index'
      get 'exercises/create'
      get '/show/:id', to: 'exercises#show'
      delete '/destroy/:id', to: 'exercises#destroy'
    end
  end
  root 'homepage#index'
  get "up" => "rails/health#show", as: :rails_health_check

end

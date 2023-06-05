Rails.application.routes.draw do

  namespace :api, defaults: {format: 'json'} do
      namespace :v1 do
        get '/logs', to: 'logs#index'
        get '/logs/user/:id', to: 'logs#user_logs'
      end
  end

  root 'logs#index'
end

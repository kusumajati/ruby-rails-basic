Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'user' => 'users#index'
      post 'user' => 'users#register' 
      post 'user/login' => 'users#login'
    end
  end

  
end
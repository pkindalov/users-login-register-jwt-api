Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'register', to: 'auth#register'
      post 'login', to: 'auth#login'
      put 'profile', to: 'users#update'
      delete 'profile', to: 'users#destroy'
      delete 'profile/avatar', to: 'users#destroy_avatar'
    end
  end
end
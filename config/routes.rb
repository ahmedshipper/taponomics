Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :forums
  resources :galleries
  devise_for :users
  get 'static_pages/homepage'

  get 'static_pages/dashboard'

  resources :clubs do
    get '/clubs/:id', to: 'clubs#show'
  end
  resources :products
  resources :events
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'static_pages#homepage'

end

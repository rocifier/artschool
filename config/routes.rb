Rails.application.routes.draw do

namespace :admin do
  resources :users
end

  resources :tabs
  put 'tabs/create' => 'tabs#update'

  devise_for :users, :controllers => {omniauth_callbacks: 'omniauth_callbacks'}

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root 'home#index'

end

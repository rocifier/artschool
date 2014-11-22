Rails.application.routes.draw do

  devise_for :users, :controllers => {omniauth_callbacks: 'omniauth_callbacks'}

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root 'home#index'

end

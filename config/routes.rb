Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  get 'tabs'            => 'tabs#index', :as => :tabs
  post 'tabs'           => 'tabs#create', :as => :create_tab
  get 'tabs/new'        => 'tabs#new', :as => :new_tab
  get 'tabs/:name/edit' => 'tabs#edit', :as => :edit_tab
  get 'tabs/:name'      => 'tabs#show', :as => :show_tab
  put 'tabs/:name'      => 'tabs#update', :as => :update_tab
  delete 'tabs/:name'   => 'tabs#destroy', :as => :destroy_tab
  

  devise_for :users, :controllers => {omniauth_callbacks: 'omniauth_callbacks'}

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root 'home#index'

end

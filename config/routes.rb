Rails.application.routes.draw do

  get 'admin' => 'admin#index'

  get 'tabs'            => 'tabs#index', :as => :tabs
  post 'tabs'           => 'tabs#create', :as => :create_tab
  get 'tabs/new'        => 'tabs#new', :as => :new_tab
  get 'tabs/:id/edit'   => 'tabs#edit', :as => :edit_tab
  get 'tabs/:id'        => 'tabs#show', :as => :show_tab
  put 'tabs/:id'        => 'tabs#update', :as => :update_tab
  delete 'tabs/:id'     => 'tabs#destroy', :as => :destroy_tab
  

  devise_for :users, :controllers => {omniauth_callbacks: 'omniauth_callbacks'}

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root 'home#index'

end

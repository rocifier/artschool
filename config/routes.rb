Rails.application.routes.draw do
  namespace :admin do
    resources :users
  end

  resources :tabs

  put 'tabs/create' => 'tabs#update'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  mount Jsonforem::Engine, at: '/forumapi', as: :jsonforem

  root 'home#index'

  get 'forums' => 'forums#index'
  get 'forums/index'
  get 'forums/category/:id' => 'forums#category'
  get 'forums/forum/:id' => 'forums#forum'
  get 'forums/topic/:id' => 'forums#topic', as: :topic
  get 'forums/post/:id' => 'forums#post', as: :post

  get 'course/fundamentals' => 'course#fundamentals', as: :fundamentals
  get 'course/techniques' => 'course#techniques', as: :techniques
  get 'course/design' => 'course#design', as: :design
end

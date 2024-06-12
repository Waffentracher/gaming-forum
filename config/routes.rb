Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end

  root 'home#index'
  get 'posts', to: 'posts#index'
  get 'contacts', to: 'contacts#index'
  get 'about', to: 'about#index'
  resources :posts
end

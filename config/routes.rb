Rails.application.routes.draw do
  root :to => 'home#home'

  get 'login' => 'login#new'
  get 'cadastro' => 'users#new'
  get 'home' => 'home#home'
  resources :login
  resources :users

end

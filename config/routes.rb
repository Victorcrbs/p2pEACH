Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :usuarios
  get 'welcome/index'
  resources :anuncios
  root 'welcome#index' , as: 'home'
  get '/search', to: 'anuncios#search'
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'usuarios#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'perfil', to: 'usuarios#profile', as: 'perfil'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

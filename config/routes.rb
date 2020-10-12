Rails.application.routes.draw do
  root 'usuarios#new'
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

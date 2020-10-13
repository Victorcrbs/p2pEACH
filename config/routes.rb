Rails.application.routes.draw do
  root 'posts#main'
  #get 'main' => 'posts#main'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # get 'sessions/new'
  
  get 'utilisateurs/new'
  root 'pages#home'
  get 'pages/home'

  resources :utilisateurs

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

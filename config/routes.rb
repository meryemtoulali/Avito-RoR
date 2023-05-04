Rails.application.routes.draw do

  resources :categories
  resources :annonces
  # get 'sessions/new'
  get 'annonces/new'

  resources :utilisateurs
  get 'utilisateurs/new'

  root 'pages#home'

  get 'utilisateurs/new'
  get 'pages/home'
  get 'inscription' => 'utilisateurs#new'

  resources :utilisateurs

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

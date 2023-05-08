Rails.application.routes.draw do

  resources :favoris
  resources :commandes
  resources :sub_categories
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

  
  get 'search' => 'annonces#search'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

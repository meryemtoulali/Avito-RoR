Rails.application.routes.draw do
  resources :utilisateurs
  get 'utilisateurs/new'
  root 'pages#home'
  get 'pages/home'
  get 'inscription' => 'utilisateurs#new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

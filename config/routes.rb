OneToMany::Application.routes.draw do
  resources :entries

  resources :users
  
  root 'entries#index'

end

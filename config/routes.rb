Rails.application.routes.draw do
  
  get 'uploads/new'
  get 'uploads/create'
  get 'uploads/index'
  resources :uploads
  resources :posts do
  resources :comments , only: [:create, :index, :destroy]

end
  resources :posts
  resources :comments
  root to: 'home#index'
  devise_for :users
  get 'home/mision'
  get 'home/contacto'
  get 'home/recursos'
  get 'home/somos'
  get 'home/index'
  get 'home/radio'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

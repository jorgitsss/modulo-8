Rails.application.routes.draw do
  resources :bloggers
  get 'noticias', to: 'bloggers#index'
  get 'nueva', to: 'bloggers#new'

  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end

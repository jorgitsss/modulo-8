Rails.application.routes.draw do
  #nuestras rutas para el scaffold
  resources :bloggers
  get 'noticias', to: 'bloggers#index'
  get 'nueva', to: 'bloggers#new'

  get 'home', to: 'pages#home'
  get 'contact', to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Nuestra ruta raiz del proyecto
  root "pages#home"
end

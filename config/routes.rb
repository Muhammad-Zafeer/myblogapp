Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "pages#home"

  # resources :pages

  get '/about',to:"pages#about"
  post '/add',to: "pages#add"
  delete "/delete/:id", to: "pages#delete"
  get "/search" ,to: "pages#search"
  get "/edit/:id", to: "pages#edit"
  post "/editform",to: "pages#editform"
end

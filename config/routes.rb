Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #For Home Page
  root "articles#index"

  #Default for Article Controller
  get "/articles", to: "articles#index"

  #Show a specific article
  get "/articles/:id", to: "articles#show"

end

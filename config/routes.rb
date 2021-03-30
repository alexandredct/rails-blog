Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #For Home Page
  root "articles#index"

  #Whenever we have such a combination of routes, controller actions, and views that work together to perform CRUD operations on an entity, we call that entity a resource.
  #@see https://api.rubyonrails.org/v6.1.3.1/classes/ActionDispatch/Routing/Mapper/Resources.html#method-i-resources
  #@see https://guides.rubyonrails.org/routing.html
  resources :articles

end

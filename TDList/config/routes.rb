TDList::Application.routes.draw do
  get "lists/index"
  resources :tasks
  resources :lists

  root :to => 'lists#index'

  # See how all your routes lay out with "rake routes"
end

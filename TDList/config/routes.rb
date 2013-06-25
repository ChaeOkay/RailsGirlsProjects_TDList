TDList::Application.routes.draw do
  get "lists/index"

  resources :tasks
  resources :lists

  #match :name => 'tasks#index', :as => 'list_tasks'
  
  root :to => 'lists#index'

  # See how all your routes lay out with "rake routes"
end

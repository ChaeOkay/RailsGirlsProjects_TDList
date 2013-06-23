TDList::Application.routes.draw do
  get "home/index"
  resources :tasks
  resources :lists

  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"
end

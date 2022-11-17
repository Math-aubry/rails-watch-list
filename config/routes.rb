Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/show'
  # get 'bookmarks/delete'
  # get 'lists/index'
  # get 'lists/new'
  # get 'lists/create'
  # get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create show delete]
  end
end

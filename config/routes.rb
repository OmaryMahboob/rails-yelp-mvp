Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'restaurants/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'restaurants#index'
  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[index new create]
  end
end

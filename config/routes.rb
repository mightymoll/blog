Rails.application.routes.draw do
  # set articles index as root (main) page
  root "articles#index"

  # 'resources' maps all of the conventional routes for CRUD
  resources :articles
end

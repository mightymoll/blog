Rails.application.routes.draw do
  # set articles index as root (main) page
  root "articles#index"

  # 'resources' maps all of the conventional routes for CRUD
  # adding 'do' and putting comments within creates comments as a nested resource within articles
  resources :articles do
    resources :comments
  end
end

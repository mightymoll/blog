Rails.application.routes.draw do
  # set articles index as root (main) page
  root "articles#index"
  # GET /articles requests are mapped to the index action of ArticlesController
  get "/articles", to: "articles#index"
  # GET /article requests are mapped to the SHOW action of ArticlesController based on id parameter
  get "/articles/:id", to: "articles#show"
end

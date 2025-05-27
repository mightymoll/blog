class ArticlesController < ApplicationController
  # Rails will automatically render a view that matches the name of the controller and action
  # # ie app/views/articles/index.html.erb
  def index
    # fetch all articles from the database
    @articles = Article.all
  end
end

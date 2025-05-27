class ArticlesController < ApplicationController
  # Rails will automatically render a view that matches the name of the controller and action
  # # ie app/views/articles/index.html.erb
  def index
    # fetch all articles from the database
    @articles = Article.all
  end

  # fetch article with a matching parameter of 'id' from the db
  def show
    @article = Article.find(params[:id])
  end

  # create a new article without saving > used in form building
  def new
    @article = Article.new
  end

  # create & save a new article using article_params helper for security
  # throws error if unsuccesful
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  # fetches the article from the database without updating > used in form building
  def edit
    @article = Article.find(params[:id])
  end

  # updates article using article_params helper for security
  # throws error if unsuccesful
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # define params allowed in helper article_params for article (title & body)
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end

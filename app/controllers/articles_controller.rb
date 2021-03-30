class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
    	#redirect_to will cause the browser to make a new request. Use after mutating the database ou application state
      redirect_to @article
    else
    	#render renders the specified view for the current request.
      render :new
    end
  end
end

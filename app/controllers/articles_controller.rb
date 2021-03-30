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
    @article = Article.new(article_params)

    if @article.save
    	#validations are checked
    	#"redirect_to" will cause the browser to make a new request. Use it after mutating the database ou application state
      redirect_to @article
    else
    	#validations are NOT checked. There's NO attempt to save @article. There will be no error messages
    	#"render" renders the specified view for the current request.
      render :new
    end
  end


  #Using Strong Parameters for creating a single Hash that contains all the parameters values
  #@see https://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end

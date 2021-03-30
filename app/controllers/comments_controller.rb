class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    #create and save the comment. This will automatically link the comment so that it belongs to that particular article.
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end

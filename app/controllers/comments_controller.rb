class CommentsController < ApplicationController
  def create
    @comment = Article.find(params[:article_id]).comments.new(comment_params)
    if @comment.save
      flash[:success] = "Comment created"
      redirect_to article_path(@comment.article)
    else
      flash[:danger] = "Comment #{@comment.errors.full_messages.join(', ')}"
      redirect_to article_path(@comment.article)
    end
  end

  def edit
    if logged_in?
      @comment = Comment.find(params[:id])
      @article = Article.find(params[:article_id])
    else
      flash[:danger] = "Not Authorized."
      redirect_to root_url
    end
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(comment_params)
      flash[:success] = "Comment Updated"
      redirect_to @comment.article
    else
      flash[:danger] = "Comment #{@comment.errors.full_messages.join(', ')}"
      redirect_to article_path(@comment.article)
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    Comment.find(params[:id]).destroy
    flash[:success] = "Comment Deleted"
    redirect_to @article
  end

  private
    def comment_params
      params.require(:comment).permit(:author_name, :author_email, :user_id, :article_id, :body)
    end
end

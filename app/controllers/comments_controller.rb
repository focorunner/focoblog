class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)
  end

  def edit
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])    
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to @comment.article
  end

  def destroy
    @article = Article.find(params[:article_id])
    Comment.find(params[:id]).destroy
    redirect_to @article
  end

  def comment_params
    params.require(:comment).permit(:author_name, :author_email, :article_id, :user_id, :body)
  end
end

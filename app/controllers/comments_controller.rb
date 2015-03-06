class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    if @comment.save
      flash[:success] = "Comment created"
      redirect_to article_path(@comment.article)
    else
      flash[:danger] = "Comment #{@comment.errors.full_messages.join(', ')}"
      redirect_to article_path(@comment.article)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
    @article = Article.find(params[:article_id])    
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

  def comment_params
    params.require(:comment).permit(:author_name, :author_email, :user_id, :body)
  end
end

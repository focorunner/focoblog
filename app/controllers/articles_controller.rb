class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order("created_at DESC").paginate(page: params[:page], per_page: 10)
  end

  def show
    @article = Article.find(params[:id])
    @comment = @article.comments.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)
    #@article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article Created"
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:success] = "Article Updated"
      redirect_to @article
    else
      render 'show'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    flash[:success] = "Article deleted"
    redirect_to articles_url
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :tag_list)
    end
end

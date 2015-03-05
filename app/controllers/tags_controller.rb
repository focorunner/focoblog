class TagsController < ApplicationController
  def index
    @tags = Tag.all.order("name asc")
  end

  def show
    @tag = Tag.find(params[:id])
    @articles = @tag.articles.paginate(page: params[:page], per_page: 10)
  end
end

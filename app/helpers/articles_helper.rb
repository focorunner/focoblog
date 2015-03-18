module ArticlesHelper
  def comment_count(comments)
    if comments.present? 
      content_tag("strong", pluralize(comments.count, "Comment"))
    else
      "No Comments"
    end
  end

  def article_title(article)
    strip_tags(article.title)
  end
end

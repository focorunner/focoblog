module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Focoblog"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def kramdown(text)
    return sanitize Kramdown::Document.new(text).to_html
  end

  def article_title(article)
    strip_tags(article.title)
  end
end

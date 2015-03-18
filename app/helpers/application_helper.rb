module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Fococoder"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def kramdown(text)
    return sanitize Kramdown::Document.new(text, { coderay_line_numbers: :table, parse_block_html: true }).to_html
  end
end

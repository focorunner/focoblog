module ApplicationHelper

  def app_name
    application_title = Rails.application.config.app_name
    if Rails.env.production?
      application_title
    else
      "#{application_title} (#{(Rails.env.development?) ? "dev".upcase : "test".upcase})"
    end
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = app_name
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

module CommentsHelper

  # Returns the Gravatar for the given commenter.
  def gravatar_for_comment(email, options = { size: 25 })
    gravatar_id = Digest::MD5::hexdigest(email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: "Commenter Avatar", class: "gravatar")
  end  
end

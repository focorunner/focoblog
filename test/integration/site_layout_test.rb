require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  def setup
    @article_one = articles(:one)
  end

  test "layout links" do
    get root_path
    assert_template 'articles/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", articles_path
    assert_select "a[href=?]", tags_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", login_path
    user = users(:jimbob)
    log_in_as(user)
    get root_path
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(user)
    assert_select "a[href=?]", edit_user_path(user)
  end
end

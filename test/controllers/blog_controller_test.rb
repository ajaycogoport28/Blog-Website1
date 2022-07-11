require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get blogList" do
    get blog_blogList_url
    assert_response :success
  end

  test "should get addBlog" do
    get blog_addBlog_url
    assert_response :success
  end

  test "should get deleteBlog" do
    get blog_deleteBlog_url
    assert_response :success
  end

  test "should get searchBlog" do
    get blog_searchBlog_url
    assert_response :success
  end

  test "should get editBlog" do
    get blog_editBlog_url
    assert_response :success
  end
end

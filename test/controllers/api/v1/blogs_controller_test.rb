require 'test_helper'

class Api::V1::BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_blog = api_v1_blogs(:one)
  end

  test "should get index" do
    get api_v1_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_api_v1_blog_url
    assert_response :success
  end

  test "should create api_v1_blog" do
    assert_difference('Api::V1::Blog.count') do
      post api_v1_blogs_url, params: { api_v1_blog: { author: @api_v1_blog.author, images: @api_v1_blog.images, publish: @api_v1_blog.publish, published_at: @api_v1_blog.published_at, text: @api_v1_blog.text, title: @api_v1_blog.title } }
    end

    assert_redirected_to api_v1_blog_url(Api::V1::Blog.last)
  end

  test "should show api_v1_blog" do
    get api_v1_blog_url(@api_v1_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_api_v1_blog_url(@api_v1_blog)
    assert_response :success
  end

  test "should update api_v1_blog" do
    patch api_v1_blog_url(@api_v1_blog), params: { api_v1_blog: { author: @api_v1_blog.author, images: @api_v1_blog.images, publish: @api_v1_blog.publish, published_at: @api_v1_blog.published_at, text: @api_v1_blog.text, title: @api_v1_blog.title } }
    assert_redirected_to api_v1_blog_url(@api_v1_blog)
  end

  test "should destroy api_v1_blog" do
    assert_difference('Api::V1::Blog.count', -1) do
      delete api_v1_blog_url(@api_v1_blog)
    end

    assert_redirected_to api_v1_blogs_url
  end
end

require "application_system_test_case"

class Api::V1::BlogsTest < ApplicationSystemTestCase
  setup do
    @api_v1_blog = api_v1_blogs(:one)
  end

  test "visiting the index" do
    visit api_v1_blogs_url
    assert_selector "h1", text: "Api/V1/Blogs"
  end

  test "creating a Blog" do
    visit api_v1_blogs_url
    click_on "New Api/V1/Blog"

    fill_in "Author", with: @api_v1_blog.author
    fill_in "Images", with: @api_v1_blog.images
    check "Publish" if @api_v1_blog.publish
    fill_in "Published at", with: @api_v1_blog.published_at
    fill_in "Text", with: @api_v1_blog.text
    fill_in "Title", with: @api_v1_blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "updating a Blog" do
    visit api_v1_blogs_url
    click_on "Edit", match: :first

    fill_in "Author", with: @api_v1_blog.author
    fill_in "Images", with: @api_v1_blog.images
    check "Publish" if @api_v1_blog.publish
    fill_in "Published at", with: @api_v1_blog.published_at
    fill_in "Text", with: @api_v1_blog.text
    fill_in "Title", with: @api_v1_blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog" do
    visit api_v1_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end

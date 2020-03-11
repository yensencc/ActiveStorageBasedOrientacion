require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Author", with: @post.author
    fill_in "Category", with: @post.category
    fill_in "Content 1", with: @post.content_1
    fill_in "Content 10", with: @post.content_10
    fill_in "Content 2", with: @post.content_2
    fill_in "Content 3", with: @post.content_3
    fill_in "Content 4", with: @post.content_4
    fill_in "Content 5", with: @post.content_5
    fill_in "Content 6", with: @post.content_6
    fill_in "Content 7", with: @post.content_7
    fill_in "Content 8", with: @post.content_8
    fill_in "Content 9", with: @post.content_9
    fill_in "Main content", with: @post.main_content
    fill_in "Main image post url", with: @post.main_image_post_url
    fill_in "Main title", with: @post.main_title
    fill_in "Sub10 image url", with: @post.sub10_image_url
    fill_in "Sub1 image url", with: @post.sub1_image_url
    fill_in "Sub2 image url", with: @post.sub2_image_url
    fill_in "Sub3 image url", with: @post.sub3_image_url
    fill_in "Sub4 image url", with: @post.sub4_image_url
    fill_in "Sub5 image url", with: @post.sub5_image_url
    fill_in "Sub6 image url", with: @post.sub6_image_url
    fill_in "Sub7 image url", with: @post.sub7_image_url
    fill_in "Sub8 image url", with: @post.sub8_image_url
    fill_in "Sub9 image url", with: @post.sub9_image_url
    fill_in "Subtitle 1", with: @post.subtitle_1
    fill_in "Subtitle 10", with: @post.subtitle_10
    fill_in "Subtitle 2", with: @post.subtitle_2
    fill_in "Subtitle 3", with: @post.subtitle_3
    fill_in "Subtitle 4", with: @post.subtitle_4
    fill_in "Subtitle 5", with: @post.subtitle_5
    fill_in "Subtitle 6", with: @post.subtitle_6
    fill_in "Subtitle 7", with: @post.subtitle_7
    fill_in "Subtitle 8", with: @post.subtitle_8
    fill_in "Subtitle 9", with: @post.subtitle_9
    fill_in "User", with: @post.user_id
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Author", with: @post.author
    fill_in "Category", with: @post.category
    fill_in "Content 1", with: @post.content_1
    fill_in "Content 10", with: @post.content_10
    fill_in "Content 2", with: @post.content_2
    fill_in "Content 3", with: @post.content_3
    fill_in "Content 4", with: @post.content_4
    fill_in "Content 5", with: @post.content_5
    fill_in "Content 6", with: @post.content_6
    fill_in "Content 7", with: @post.content_7
    fill_in "Content 8", with: @post.content_8
    fill_in "Content 9", with: @post.content_9
    fill_in "Main content", with: @post.main_content
    fill_in "Main image post url", with: @post.main_image_post_url
    fill_in "Main title", with: @post.main_title
    fill_in "Sub10 image url", with: @post.sub10_image_url
    fill_in "Sub1 image url", with: @post.sub1_image_url
    fill_in "Sub2 image url", with: @post.sub2_image_url
    fill_in "Sub3 image url", with: @post.sub3_image_url
    fill_in "Sub4 image url", with: @post.sub4_image_url
    fill_in "Sub5 image url", with: @post.sub5_image_url
    fill_in "Sub6 image url", with: @post.sub6_image_url
    fill_in "Sub7 image url", with: @post.sub7_image_url
    fill_in "Sub8 image url", with: @post.sub8_image_url
    fill_in "Sub9 image url", with: @post.sub9_image_url
    fill_in "Subtitle 1", with: @post.subtitle_1
    fill_in "Subtitle 10", with: @post.subtitle_10
    fill_in "Subtitle 2", with: @post.subtitle_2
    fill_in "Subtitle 3", with: @post.subtitle_3
    fill_in "Subtitle 4", with: @post.subtitle_4
    fill_in "Subtitle 5", with: @post.subtitle_5
    fill_in "Subtitle 6", with: @post.subtitle_6
    fill_in "Subtitle 7", with: @post.subtitle_7
    fill_in "Subtitle 8", with: @post.subtitle_8
    fill_in "Subtitle 9", with: @post.subtitle_9
    fill_in "User", with: @post.user_id
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end

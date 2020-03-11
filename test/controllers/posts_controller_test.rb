require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { author: @post.author, category: @post.category, content_1: @post.content_1, content_10: @post.content_10, content_2: @post.content_2, content_3: @post.content_3, content_4: @post.content_4, content_5: @post.content_5, content_6: @post.content_6, content_7: @post.content_7, content_8: @post.content_8, content_9: @post.content_9, main_content: @post.main_content, main_image_post_url: @post.main_image_post_url, main_title: @post.main_title, sub10_image_url: @post.sub10_image_url, sub1_image_url: @post.sub1_image_url, sub2_image_url: @post.sub2_image_url, sub3_image_url: @post.sub3_image_url, sub4_image_url: @post.sub4_image_url, sub5_image_url: @post.sub5_image_url, sub6_image_url: @post.sub6_image_url, sub7_image_url: @post.sub7_image_url, sub8_image_url: @post.sub8_image_url, sub9_image_url: @post.sub9_image_url, subtitle_1: @post.subtitle_1, subtitle_10: @post.subtitle_10, subtitle_2: @post.subtitle_2, subtitle_3: @post.subtitle_3, subtitle_4: @post.subtitle_4, subtitle_5: @post.subtitle_5, subtitle_6: @post.subtitle_6, subtitle_7: @post.subtitle_7, subtitle_8: @post.subtitle_8, subtitle_9: @post.subtitle_9, user_id: @post.user_id } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { author: @post.author, category: @post.category, content_1: @post.content_1, content_10: @post.content_10, content_2: @post.content_2, content_3: @post.content_3, content_4: @post.content_4, content_5: @post.content_5, content_6: @post.content_6, content_7: @post.content_7, content_8: @post.content_8, content_9: @post.content_9, main_content: @post.main_content, main_image_post_url: @post.main_image_post_url, main_title: @post.main_title, sub10_image_url: @post.sub10_image_url, sub1_image_url: @post.sub1_image_url, sub2_image_url: @post.sub2_image_url, sub3_image_url: @post.sub3_image_url, sub4_image_url: @post.sub4_image_url, sub5_image_url: @post.sub5_image_url, sub6_image_url: @post.sub6_image_url, sub7_image_url: @post.sub7_image_url, sub8_image_url: @post.sub8_image_url, sub9_image_url: @post.sub9_image_url, subtitle_1: @post.subtitle_1, subtitle_10: @post.subtitle_10, subtitle_2: @post.subtitle_2, subtitle_3: @post.subtitle_3, subtitle_4: @post.subtitle_4, subtitle_5: @post.subtitle_5, subtitle_6: @post.subtitle_6, subtitle_7: @post.subtitle_7, subtitle_8: @post.subtitle_8, subtitle_9: @post.subtitle_9, user_id: @post.user_id } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end

require 'test_helper'

class TagPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_post = tag_posts(:one)
  end

  test "should get index" do
    get tag_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_post_url
    assert_response :success
  end

  test "should create tag_post" do
    assert_difference('TagPost.count') do
      post tag_posts_url, params: { tag_post: { post_id: @tag_post.post_id, tag_id: @tag_post.tag_id } }
    end

    assert_redirected_to tag_post_url(TagPost.last)
  end

  test "should show tag_post" do
    get tag_post_url(@tag_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_post_url(@tag_post)
    assert_response :success
  end

  test "should update tag_post" do
    patch tag_post_url(@tag_post), params: { tag_post: { post_id: @tag_post.post_id, tag_id: @tag_post.tag_id } }
    assert_redirected_to tag_post_url(@tag_post)
  end

  test "should destroy tag_post" do
    assert_difference('TagPost.count', -1) do
      delete tag_post_url(@tag_post)
    end

    assert_redirected_to tag_posts_url
  end
end

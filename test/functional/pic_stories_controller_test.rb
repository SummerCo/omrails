require 'test_helper'

class PicStoriesControllerTest < ActionController::TestCase
  setup do
    @pic_story = pic_stories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pic_stories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pic_story" do
    assert_difference('PicStory.count') do
      post :create, pic_story: { Story: @pic_story.Story }
    end

    assert_redirected_to pic_story_path(assigns(:pic_story))
  end

  test "should show pic_story" do
    get :show, id: @pic_story
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pic_story
    assert_response :success
  end

  test "should update pic_story" do
    put :update, id: @pic_story, pic_story: { Story: @pic_story.Story }
    assert_redirected_to pic_story_path(assigns(:pic_story))
  end

  test "should destroy pic_story" do
    assert_difference('PicStory.count', -1) do
      delete :destroy, id: @pic_story
    end

    assert_redirected_to pic_stories_path
  end
end

require 'test_helper'

class TweedsControllerTest < ActionController::TestCase
  setup do
    @tweed = tweeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tweeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tweed" do
    assert_difference('Tweed.count') do
      post :create, tweed: { content: @tweed.content, creator_id: @tweed.creator_id }
    end

    assert_redirected_to tweed_path(assigns(:tweed))
  end

  test "should show tweed" do
    get :show, id: @tweed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tweed
    assert_response :success
  end

  test "should update tweed" do
    patch :update, id: @tweed, tweed: { content: @tweed.content, creator_id: @tweed.creator_id }
    assert_redirected_to tweed_path(assigns(:tweed))
  end

  test "should destroy tweed" do
    assert_difference('Tweed.count', -1) do
      delete :destroy, id: @tweed
    end

    assert_redirected_to tweeds_path
  end
end

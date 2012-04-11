require 'test_helper'

class Post1sControllerTest < ActionController::TestCase
  setup do
    @post1 = post1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post1" do
    assert_difference('Post1.count') do
      post :create, post1: @post1.attributes
    end

    assert_redirected_to post1_path(assigns(:post1))
  end

  test "should show post1" do
    get :show, id: @post1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post1
    assert_response :success
  end

  test "should update post1" do
    put :update, id: @post1, post1: @post1.attributes
    assert_redirected_to post1_path(assigns(:post1))
  end

  test "should destroy post1" do
    assert_difference('Post1.count', -1) do
      delete :destroy, id: @post1
    end

    assert_redirected_to post1s_path
  end
end

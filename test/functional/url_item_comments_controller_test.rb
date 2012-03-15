require 'test_helper'

class UrlItemCommentsControllerTest < ActionController::TestCase
  setup do
    @url_item_comment = url_item_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:url_item_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create url_item_comment" do
    assert_difference('UrlItemComment.count') do
      post :create, :url_item_comment => @url_item_comment.attributes
    end

    assert_redirected_to url_item_comment_path(assigns(:url_item_comment))
  end

  test "should show url_item_comment" do
    get :show, :id => @url_item_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @url_item_comment
    assert_response :success
  end

  test "should update url_item_comment" do
    put :update, :id => @url_item_comment, :url_item_comment => @url_item_comment.attributes
    assert_redirected_to url_item_comment_path(assigns(:url_item_comment))
  end

  test "should destroy url_item_comment" do
    assert_difference('UrlItemComment.count', -1) do
      delete :destroy, :id => @url_item_comment
    end

    assert_redirected_to url_item_comments_path
  end
end

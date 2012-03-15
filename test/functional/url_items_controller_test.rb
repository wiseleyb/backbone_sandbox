require 'test_helper'

class UrlItemsControllerTest < ActionController::TestCase
  setup do
    @url_item = url_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:url_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create url_item" do
    assert_difference('UrlItem.count') do
      post :create, :url_item => @url_item.attributes
    end

    assert_redirected_to url_item_path(assigns(:url_item))
  end

  test "should show url_item" do
    get :show, :id => @url_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @url_item
    assert_response :success
  end

  test "should update url_item" do
    put :update, :id => @url_item, :url_item => @url_item.attributes
    assert_redirected_to url_item_path(assigns(:url_item))
  end

  test "should destroy url_item" do
    assert_difference('UrlItem.count', -1) do
      delete :destroy, :id => @url_item
    end

    assert_redirected_to url_items_path
  end
end

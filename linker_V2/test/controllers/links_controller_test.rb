require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @link = links(:google)
    @update = {title: @link.title, url: 'http://www.google.com/'}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      session[:user_id] = 1
      post :create, link: {link: nil, title: 'TestLink', url: 'http://test.link/'}
    end

    assert_redirected_to links_path
  end

  test "should get edit" do
    get :edit, id: @link
    assert_response :success
  end

  test "should update link" do
    patch :update, id: @link, link: @update
    assert_redirected_to links_path
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, id: @link
    end

    assert_redirected_to links_path
  end
end

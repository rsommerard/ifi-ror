require 'test_helper'

class SigninsControllerTest < ActionController::TestCase

  setup do
    User.create(login: 'test', password: 'test')
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should signin" do
    post :create, user: {user: nil, login: 'test', password: 'test'}
    assert session[:user_id]
    assert_redirected_to links_path
  end

  test "should not signin" do
    post :create, user: {user: nil, login: 'test', password: ''}
    assert_not session[:user_id]

    post :create, user: {user: nil, login: '', password: 'test'}
    assert_not session[:user_id]
  end

end

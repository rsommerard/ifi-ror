require 'test_helper'

class SignupsControllerTest < ActionController::TestCase
  setup do
    User.create(login: 'user', password: 'user')
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should signup" do
    assert_difference('User.count') do
      post :create, user: {user: nil, login: 'test', password: 'test', password_confirmation: 'test'}
    end

    assert session[:user_id]
    assert_redirected_to links_path
  end

  test "should not signup" do
    assert_no_difference('User.count') do
      post :create, user: {user: nil, login: 'user', password: 'user', password_confirmation: 'user'}
    end

    assert_not session[:user_id]

    assert_no_difference('User.count') do
      post :create, user: {user: nil, login: 'user', password: 'user', password_confirmation: ''}
    end

    assert_not session[:user_id]

    assert_no_difference('User.count') do
      post :create, user: {user: nil, login: 'user', password: '', password_confirmation: 'user'}
    end

    assert_not session[:user_id]

    assert_no_difference('User.count') do
      post :create, user: {user: nil, login: '', password: 'user', password_confirmation: 'user'}
    end

    assert_not session[:user_id]
  end
end

require 'test_helper'

class SignoutsControllerTest < ActionController::TestCase
  setup do
    user_id = User.create(login: 'test', password: 'test')
    session[:user_id] = user_id
  end

  test "should signout" do
    assert session[:user_id]

    delete :destroy
    assert_not session[:user_id]
    assert_redirected_to links_path
  end

end

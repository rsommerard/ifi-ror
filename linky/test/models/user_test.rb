require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :users

  test "user should be valid" do
    assert users(:alice).valid?
  end

  test "user should be invalid" do
    user = User.new(login: '', password: '')
    assert user.invalid?
  end

  test "user login is required" do
    user = User.new(login: '', password: 'bob')
    assert user.invalid?
  end

  test "user password is required" do
    user = User.new(login: 'bob', password: '')
    assert user.invalid?
  end

end

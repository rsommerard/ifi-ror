require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  fixtures :links

  test "link attributes must not be empty" do
    link = Link.new
    assert link.invalid?
    assert link.errors[:title].any?
    assert link.errors[:url].any?
  end

  test "google link must be valid" do
    assert links(:google).valid?
  end

  test "link without http must be invalid" do
    assert links(:without).invalid?
    assert links(:without).errors[:url].any?
  end

  test "wikipedia link must be valid" do
    assert links(:wikipedia).valid?
  end

  test "score must be greater than 0" do
    links(:without).score = -1
    assert links(:without).invalid?
    assert links(:without).errors[:score].any?
  end

  test "score must be initialized to 0" do
    link = Link.new(title: 'LinkTest', url: 'http://www.link.test', user_id: 1)
    assert_equal 0, link[:score]
  end

  test "user_id must be present" do
    link = Link.new(title: 'LinkTest', url: 'http://www.link.test')
    assert link.invalid?
    assert link.errors[:user_id].any?
  end

end

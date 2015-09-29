require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  fixtures :links

  test "link attributes must not be empty" do
    link = Link.new
    assert link.invalid?
    assert link.errors[:title].any?
    assert link.errors[:url].any?
  end
end

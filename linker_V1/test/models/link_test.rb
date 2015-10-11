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
  
end

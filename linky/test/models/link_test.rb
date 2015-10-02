require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  fixtures :links

  test "link attributes must not be empty" do
    link = Link.new
    assert link.invalid?
    assert link.errors[:title].any?
    assert link.errors[:url].any?
  end

  test "link validated" do
	  link = Link.new(title: 'Link_title',url: 'http://www.google.fr')
    assert link.valid?
  end

  test "score must be greater than 0" do
    link = Link.new(title: 'Link_title',url: 'http://www.google.fr', score: -1)
    assert link.invalid?
    assert link.errors[:score].any?
    puts link.errors[:score]
  end

  test "error with url format" do
    link = Link.new(title: 'Link_title',url: 'google')
    assert link.invalid?
    assert link.errors[:url].any?
    puts link.errors[:url]
  end

  test "check if score equals to 0 in initialisation" do
    link = Link.new(title: 'Link_title',url: 'http://www.google.fr')
    assert_equal( 0 , link[:score], 'the score equals to 0')
  end  

end

require 'test_helper'

class LinkTest < ActiveSupport::TestCase

  test "link attributes must not be empty" do
    link = Link.new
    assert link.invalid?
    assert link.errors[:title].any?
    assert link.errors[:url].any?
  end

  test "link validated" do
	  link = Link.new(title: 'Link_title',url: 'http://www.google.fr')
    assert link.valid?

    link = Link.new(title: 'Link_title',url: 'https://fr.wikipedia.org/wiki/Wikip%C3%A9dia:Accueil_principal')
    assert link.valid?
  end

  test "score must be greater than 0" do
    link = Link.new(title: 'Link_title', url: 'http://www.google.fr', score: -1)
    assert link.invalid?
    assert link.errors[:score].any?
    puts link.errors[:score]
  end

  test "error with url format" do
    link = Link.new(title: 'Link_title', url: 'google')
    assert link.invalid?
    assert link.errors[:url].any?
    puts link.errors[:url]
  end

  test "score initialized to 0" do
    link = Link.new(title: 'Link_title', url: 'http://www.google.fr')
    assert_equal(0 , link[:score], 'the score equals to 0')
  end

end

require 'test_helper'

class VoteTest < ActiveSupport::TestCase

  test 'vote should be valid' do
    assert Vote.new(user_id: 1, link_id: 1).valid?
  end

end

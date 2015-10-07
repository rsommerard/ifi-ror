class Vote < ActiveRecord::Base
  has_one :user
  has_one :link

  validates :user_id, :uniqueness => { :scope => :link_id }
end

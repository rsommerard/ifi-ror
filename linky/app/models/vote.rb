class Vote < ActiveRecord::Base
  has_one :user
  has_one :link
end

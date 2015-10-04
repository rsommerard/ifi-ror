class User < ActiveRecord::Base
  has_one :vote
  validates :login, presence: true, uniqueness: true

  has_secure_password
end

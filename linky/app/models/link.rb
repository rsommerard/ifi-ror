class Link < ActiveRecord::Base
  has_one :user

  validates :user_id, presence: true 
  validates :title, :url, presence: true
  validates :score, numericality: {
  	greater_than_or_equal_to: 0,
  	message: 'must be greater than 0'
  }
  validates :title, uniqueness: true
  validates :url, allow_blank: false, format: {
    with: %r{\A(https?:\/\/)([\da-z\.-]+\.[a-z\.]{2,6})([\/\w%:\.-]*)*\/?\z}i,
    message: 'must be like: http://www.example.com/'
  }
end

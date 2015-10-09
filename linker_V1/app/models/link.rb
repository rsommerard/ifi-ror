class Link < ActiveRecord::Base
  
  validates :title, :url, presence: true
  validates :title, uniqueness: true
  validates :url, allow_blank: false, format: {
    with: %r{\A(https?:\/\/)([\da-z\.-]+\.[a-z\.]{2,6})([\/\w%:\.-]*)*\/?\z}i,
    message: 'must be like: http://www.example.com/'
  }
end

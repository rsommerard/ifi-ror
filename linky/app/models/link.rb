class Link < ActiveRecord::Base
  validates  :title, :url, :score, presence: true
  validates :score, numericality: { greater_than_or_equal_to: 0 }
  validates :title, uniqueness: true
  validates :url, allow_blank: false, format: {
    with: %r{\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?\z}i,
    message: 'must be a URL.'
  }
end

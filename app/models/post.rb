class Post < ActiveRecord::Base
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true

  # Relationships
  has_many :comments
end

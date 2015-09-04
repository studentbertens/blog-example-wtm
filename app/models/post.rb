# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true

  # Relationships
  has_many :comments
end

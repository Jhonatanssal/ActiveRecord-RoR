class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, :body, length: { minimum: 3 }
  belongs_to :user
  has_many :comments
end

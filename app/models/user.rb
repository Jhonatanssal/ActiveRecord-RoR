class User < ApplicationRecord
  validates :username, length: { minimum: 4, maximun: 12 }
  validates :password, length: { minimum: 6, maximun: 16 }
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  has_many :posts
  has_many :comments
end

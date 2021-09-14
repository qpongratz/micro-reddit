class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { in: 6..20 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..20 }
  has_many :posts
end

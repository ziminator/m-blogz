class Comment < ApplicationRecord
  has_many :relationships
  has_many :users, through: :relationships
  has_many :microposts, through: :relationships

  validates :body, presence: true
end

class Micropost < ApplicationRecord
  has_many :relationships
  has_many :users, through: :relationships
  has_many :comments, through: :relationships, dependent: :destroy

  validates :body, presence: true
end

class Micropost < ApplicationRecord
  validates :body, presence: true
end

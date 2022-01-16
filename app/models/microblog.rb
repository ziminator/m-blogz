class Microblog < ApplicationRecord
  validates :body, presence: true
end

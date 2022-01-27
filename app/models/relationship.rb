class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  belongs_to :comment
end

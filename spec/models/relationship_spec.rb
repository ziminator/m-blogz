require 'rails_helper'

RSpec.describe Relationship, type: :model do
  it { should belong_to :user }
  it { should belong_to :micropost }
  it { should belong_to :comment }
end

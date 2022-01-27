require 'rails_helper'

RSpec.describe Micropost, type: :model do
  it { should validate_presence_of :body }

  it { should have_many(:comments).dependent(:destroy) }
end

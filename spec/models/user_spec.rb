require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :user_name }
  
  it { should have_many(:microposts).dependent(:destroy) }
  it { should have_many(:comments).dependent(:destroy) }
end

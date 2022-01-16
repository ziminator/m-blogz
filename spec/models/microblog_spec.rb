require 'rails_helper'

RSpec.describe Microblog, type: :model do
  it { should validate_presence_of :body }
end

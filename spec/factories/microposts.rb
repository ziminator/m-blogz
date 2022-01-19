FactoryBot.define do
  factory :micropost do
    body { "MyText" }
  end

  trait :invalid do
    body { nil }
  end
end

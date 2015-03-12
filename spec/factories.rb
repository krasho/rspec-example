FactoryGirl.define do
  factory :post do
    sequence(:title) { |n| "Post number #{n}" }
    content { Faker::Lorem.paragraphs(2).to_s }
  end
end

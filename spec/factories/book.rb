FactoryBot.define do
  factory :book do
    title { Faker::Name.name }
    description { Faker::Lorem.sentence }

    association :author, factory: :user
  end
end

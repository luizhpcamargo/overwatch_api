FactoryBot.define do
  factory :ability do
    name { Faker::Beer.name }
    description { Faker::Overwatch.quote}
    is_ultimate { [true, false].sample }
    hero
  end
end

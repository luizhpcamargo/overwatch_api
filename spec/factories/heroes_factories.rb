FactoryBot.define do
  factory :hero do
    name { Faker::Overwatch.hero }
    real_name { "#{Faker::Overwatch.hero} #{Faker::Overwatch.location}"}
    health{ rand(100) }
    armour{ rand(100) }
    shield{ rand(100) }
  end
end

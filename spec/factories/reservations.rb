FactoryBot.define do
  factory :reservation do
    reserve_date { Faker::Date.forward(days: 7) }
    city { Faker::Address.city }
    user
    cab
  end
end

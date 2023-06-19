FactoryBot.define do
  factory :cab do
    manufacturer { 'ABC Manufacturer' }
    model { 'Corolla' }
    transmission { %w[Automatic Manual].sample }
    rental_price { Faker::Number.decimal(l_digits: 2) }
    seating_capacity { Faker::Number.between(from: 2, to: 8) }
    body_type { Faker::Vehicle.car_type }
    discount { Faker::Number.between(from: 0, to: 50) }
    engine_type { Faker::Vehicle.engine }
    description { Faker::Lorem.sentence }
    image_url { 'https://plus.unsplash.com/premium_photo-1661964088064-dd92eaaa7dcf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cmFuZG9tfGVufDB8fDB8fHww&auto=format&fit=crop&w=1000&q=60' }
    user
  end
end

FactoryBot.define do
  factory :cab do
    # Define attributes for the cab model
    model { 'Model 1' }
    manufacturer { 'Manufacturer 1' }
    transmission { 'Automatic' }
    rental_price { 100 }
    discount { 0 }
    engine_type { 'Engine Type 1' }
    seating_capacity { 4 }
    body_type { 'Body Type 1' }
    description { 'Description 1' }
    image_url { 'https://example.com/image1.png' }
    association :user, factory: :user
  end
end

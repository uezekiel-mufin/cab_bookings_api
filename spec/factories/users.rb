# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    # Define attributes for the user model
    sequence(:name) { |n| "User #{n}" }
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'abc123' }
    password_confirmation { 'abc123' }
    # Add any other attributes needed for the User model
  end
end

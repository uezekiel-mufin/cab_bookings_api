require 'rails_helper'

RSpec.describe Cab, type: :model do
  let(:user) do
    User.create(name: 'Admin', email: 'admin@gmail.com', password: 'abc123', password_confirmation: 'abc123')
  end
  subject do
    Cab.create(
      id: 91,
      manufacturer: 'Honda',
      model: 'Honda City',
      transmission: 'Automatic',
      rental_price: 100.00,
      discount: 5,
      engine_type: '3.5L V6',
      image_url:
                 'https://images.unsplash.com/photo-1600259828526-77f8617ceec9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aG9uZGElMjBjaXR5fGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60',
      seating_capacity: 4,
      body_type: 'Sedan',
      user:,
      description:
                 'The Honda City is a stylish and fuel-efficient sedan perfect for your daily.'
    )
  end

  it 'should be valid' do
    expect(subject).to be_valid
  end

  it 'is not valid with a description greater than 1000' do
    subject.description = 'Contrary to popular belief, Lorem Ipsum is not simply random text.
    It has roots in a piece of classical Latin literature from 45 BC, making it over 2000
    years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
    looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going
    through the cites of the word in classical literature, discovered the undoubtable source.
    Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The
    Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of
    ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit
    amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s
    is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et
    Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions
    from the 1914 translation by H. Rackham.'
    expect(subject).to_not be_valid
  end

  it 'discount should be an integer' do
    subject.discount = 'string'
    expect(subject).to_not be_valid
  end

  it 'discount should be an integer' do
    subject.discount = 1
    expect(subject).to be_valid
  end

  it 'discount should be greater than or equal to 0 and less than 100' do
    subject.discount = -1
    subject.discount = 101
    expect(subject).to_not be_valid
  end

  it 'seating_capacity should be an integer' do
    subject.seating_capacity = 1
    expect(subject).to be_valid
  end

  it 'seating_capacity should be an integer' do
    subject.seating_capacity = 'string'
    expect(subject).to_not be_valid
  end

  it 'rental_price should be an integer' do
    subject.rental_price = 'string'
    expect(subject).to_not be_valid
  end

  it 'rental_price should be an integer' do
    subject.rental_price = 'string'
    expect(subject).to_not be_valid
  end

  it 'Rental price must be a positive number' do
    subject.rental_price = -1
    expect(subject).to_not be_valid
  end
end

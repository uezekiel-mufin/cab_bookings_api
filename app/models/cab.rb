class Cab < ApplicationRecord
  validates :manufacturer, presence: true,
                           length: { minimum: 3, message: 'Manufacturer must have 3 or more characters' }
  validates :transmission, presence: true
  validates :description, presence: true, allow_blank: true,
                          length: { maximum: 1000, message: 'Description must have less than 1000 characters' }
  validates :rental_price, presence: true,
                           numericality: { greater_than: 0, message: 'Rental price must be a positive number' }
  validates :engine_type, presence: true
  validates :model, presence: true, length: { minimum: 3, message: 'Model must have 3 or more characters' }
  validates :discount,
            numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100,
                            message: 'Discount must be a percentage between 0 and 100' },
            allow_nil: true
  validates :seating_capacity, presence: true,
                               numericality: { only_integer: true, message: 'Seat capacity must have integer' }

  has_many :reservations, dependent: :destroy
  belongs_to :user
end

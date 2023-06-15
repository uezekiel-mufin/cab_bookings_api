class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :cab



  validates :reserve_date, presence: true
  validates :user, presence: true
  validates :cab, presence: true
  validates :city, presence: true
end

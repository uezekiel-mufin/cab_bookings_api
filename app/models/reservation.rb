class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :cab

  before_validation :set_user_name

  validates :reserve_date, presence: true
  validates :user, presence: true
  validates :cab, presence: true
  validates :user_name, presence: true

  private

  def set_user_name
    self.user_name = user.name if user.present?
  end
end

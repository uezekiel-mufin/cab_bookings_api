require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:reserve_date) }
    it { should validate_presence_of(:user) }
    it { should validate_presence_of(:cab) }
    it { should validate_presence_of(:city) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:cab) }
  end
end

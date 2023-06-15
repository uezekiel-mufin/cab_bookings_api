class ChangeReserveDate < ActiveRecord::Migration[7.0]
  def change
    change_column(:reservations, :reserve_date, :string)
  end
end

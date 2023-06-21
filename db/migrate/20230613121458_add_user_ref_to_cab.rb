class AddUserRefToCab < ActiveRecord::Migration[7.0]
  def change
    add_reference :cabs, :user, null: false, foreign_key: true
  end
end

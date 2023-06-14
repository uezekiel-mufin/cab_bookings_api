class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.string :user_name, null: false
      t.references :cab, null: false, foreign_key: true
      t.datetime :reserve_date

      t.timestamps
    end
  end
end

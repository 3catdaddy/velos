class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :bike, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end

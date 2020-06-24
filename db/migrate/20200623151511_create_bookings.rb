class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :Time
      t.text :Description
      t.references :Mentor, null: false, foreign_key: true
      t.references :Mentee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

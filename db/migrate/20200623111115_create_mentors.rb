class CreateMentors < ActiveRecord::Migration[6.0]
  def change
    create_table :mentors do |t|
      t.string :Name
      t.string :Email
      t.string :Password
      t.text :About

      t.timestamps
    end
  end
end

class CreateMentees < ActiveRecord::Migration[6.0]
  def change
    create_table :mentees do |t|
      t.string :Name
      t.string :Email
      t.string :Password

      t.timestamps
    end
  end
end

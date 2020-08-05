class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone_number
      t.string :phone_type
      t.date :date_entered
      t.integer :user_id
      t.integer :raffle_id
      t.timestamps
    end
  end
end

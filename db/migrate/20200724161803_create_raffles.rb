class CreateRaffles < ActiveRecord::Migration[6.0]
  def change
    create_table :raffles do |t|
      t.string :title
      t.integer :size
      t.date :date
      t.integer :user_id
      t.integer :shoe_id

      t.timestamps
    end
  end
end

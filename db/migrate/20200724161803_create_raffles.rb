class CreateRaffles < ActiveRecord::Migration[6.0]
  def change
    create_table :raffles do |t|
      t.string :title
      t.string :content
      t.date :date
      t.boolean :open
      t.integer :user_id
      t.integer :shoe_id

      t.timestamps
    end
  end
end

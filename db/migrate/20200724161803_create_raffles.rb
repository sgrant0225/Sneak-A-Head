class CreateRaffles < ActiveRecord::Migration[6.0]
  def change
    create_table :raffles do |t|
      t.integer :size
      t.date :date

      t.timestamps
    end
  end
end

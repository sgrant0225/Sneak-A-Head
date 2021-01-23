class CreateShoes < ActiveRecord::Migration[6.0]
  def change
    create_table :shoes do |t|
      t.string :image
      t.string :name
      t.date :release_date
      t.string :price
      

      t.timestamps
    end
  end
end

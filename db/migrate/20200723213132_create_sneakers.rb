class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :product_detail
      t.date :release_date

      t.timestamps
    end
  end
end

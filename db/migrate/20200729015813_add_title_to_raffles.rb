class AddTitleToRaffles < ActiveRecord::Migration[6.0]
  def change
    add_column :raffles, :title, :string
  end
end

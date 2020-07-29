class AddUserIdToRaffles < ActiveRecord::Migration[6.0]
  def change
    add_column :raffles, :user_id, :integer
  end
end

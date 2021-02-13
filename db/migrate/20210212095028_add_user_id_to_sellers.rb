class AddUserIdToSellers < ActiveRecord::Migration[5.1]
  def change
    add_column :sellers, :user_id, :integer
    add_index :sellers, :user_id
  end
end

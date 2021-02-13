class CreateSellers < ActiveRecord::Migration[5.1]
  def change
    create_table :sellers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :product_description

      t.timestamps
    end
  end
end

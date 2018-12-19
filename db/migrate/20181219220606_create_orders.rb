class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :phone_id
      t.integer :count
      t.string :adress

      t.timestamps
    end
  end
end

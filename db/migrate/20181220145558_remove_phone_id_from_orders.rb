class RemovePhoneIdFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :phone_id, :integer
  end
end

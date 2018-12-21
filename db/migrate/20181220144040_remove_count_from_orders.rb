class RemoveCountFromOrders < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :count, :integer
  end
end

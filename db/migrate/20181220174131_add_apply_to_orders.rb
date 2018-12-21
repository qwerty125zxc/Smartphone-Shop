class AddApplyToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :apply, :boolean
  end
end

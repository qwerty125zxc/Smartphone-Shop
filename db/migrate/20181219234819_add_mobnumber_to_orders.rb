class AddMobnumberToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :mobnumber, :integer
  end
end

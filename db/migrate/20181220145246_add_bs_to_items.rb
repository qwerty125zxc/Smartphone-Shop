class AddBsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :phone_id, :integer
    add_column :items, :order_id, :integer
  end
end

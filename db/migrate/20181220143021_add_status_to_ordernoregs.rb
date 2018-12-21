class AddStatusToOrdernoregs < ActiveRecord::Migration[5.1]
  def change
    add_column :ordernoregs, :status, :string
  end
end

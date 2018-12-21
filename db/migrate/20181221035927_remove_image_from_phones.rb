class RemoveImageFromPhones < ActiveRecord::Migration[5.1]
  def change
    remove_column :phones, :image, :string
  end
end

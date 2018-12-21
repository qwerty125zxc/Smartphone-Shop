class AddImageToPhones < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :image, :string
  end
end

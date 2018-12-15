class CreateOrdernoregs < ActiveRecord::Migration[5.1]
  def change
    create_table :ordernoregs do |t|
      t.integer :phone_id
      t.integer :count
      t.integer :mobnumber
      t.string :email
      t.string :adress

      t.timestamps
    end
  end
end

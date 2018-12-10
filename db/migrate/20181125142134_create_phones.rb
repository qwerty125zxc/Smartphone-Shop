class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.integer :admin_id
      t.string :brand
      t.string :model
      t.integer :price
      t.string :materials
      t.string :color
      t.string :os
      t.float :displaysize
      t.string :displaytype
      t.string :displayresolution
      t.string :soc
      t.string :frequency
      t.string :gpu
      t.integer :rom
      t.integer :ram
      t.integer :sims
      t.string :maincam
      t.string :frontcam
      t.string :videoresolution
      t.string :focus
      t.text :moreaboutcam
      t.integer :battery
      t.string :fastcharge
      t.text :wireless
      t.integer :year
      t.string :interfaces
      t.string :dimensions
      t.integer :mass
      t.text :more
      t.text :description

      t.timestamps
    end
  end
end

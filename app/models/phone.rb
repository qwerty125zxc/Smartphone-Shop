class Phone < ApplicationRecord
  belongs_to :admin
  has_many :ordernoregs
  has_many :comments

  validates :price, :brand, :model, :materials, :color, :os, :displaysize, :displaytype, :displayresolution, :soc, :frequency, :gpu, :rom, :ram, :sims, :maincam, :frontcam, :videoresolution, :focus, :moreaboutcam, :battery, :fastcharge, :wireless, :year, :interfaces, :dimensions, :mass, :more, :description, presence: :true
end

class Phone < ApplicationRecord
  belongs_to :admin
  has_many :ordernoregs
  has_many :comments

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

  validates :price, :brand, :model, :materials, :color, :os, :displaysize, :displaytype, :displayresolution, :soc, :frequency, :gpu, :rom, :ram, :sims, :maincam, :frontcam, :videoresolution, :focus, :moreaboutcam, :battery, :fastcharge, :wireless, :year, :interfaces, :dimensions, :mass, :more, :description, presence: :true
end

class Phone < ApplicationRecord
  belongs_to :admin
  has_many :ordernoregs
  has_many :orders

  has_many :comments
end

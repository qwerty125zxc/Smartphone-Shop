class Phone < ApplicationRecord
  belongs_to :admin
  has_many :ordernoregs
end

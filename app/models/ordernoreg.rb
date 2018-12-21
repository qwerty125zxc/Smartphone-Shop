class Ordernoreg < ApplicationRecord
  belongs_to :phone

  validates :count, :mobnumber, :email, :adress, presence: :true
end

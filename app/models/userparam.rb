class Userparam < ApplicationRecord
  belongs_to :user
  validates :name, :mobnumber, presence: true
end

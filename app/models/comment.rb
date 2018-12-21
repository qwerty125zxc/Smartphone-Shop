class Comment < ApplicationRecord
  belongs_to :phone
  belongs_to :user

  validates :body, presence: true
end

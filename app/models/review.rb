class Review < ApplicationRecord
  belongs_to :food_stand

  validates :rate,
            :owner,
            :food_stand,
            :description, presence: true
end

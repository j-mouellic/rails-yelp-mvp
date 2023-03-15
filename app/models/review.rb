class Review < ApplicationRecord
  belongs_to :restaurant
  RANGE = (0..5)
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: RANGE }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end

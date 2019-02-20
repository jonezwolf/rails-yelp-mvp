class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :restaurant_id, presence: true
  validates :rating, allow_blank: false, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: { only_integer: true }
end

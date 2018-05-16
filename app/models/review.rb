class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 5 }
end


class Review < ApplicationRecord
  belongs_to :restaurant
  validates_inclusion_of :rating, in: [0, 1, 2, 3, 4, 5]
  validates_numericality_of :rating
  validates :content,:rating, presence: true
end

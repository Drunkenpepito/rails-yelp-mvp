class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name,:address, :category, presence: true
  validates_inclusion_of :category, in: ['belgian', 'french', 'italian', 'chinese', 'japanese']
end

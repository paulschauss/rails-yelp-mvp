class Review < ApplicationRecord
  validates :rating,  numericality: { only_integer: true,
                                      greater_than_or_equal_to: 0,
                                      less_than_or_equal_to: 5 }
  validates :content, presence: true
  belongs_to :restaurant
end

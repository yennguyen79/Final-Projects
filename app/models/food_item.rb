class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section
end

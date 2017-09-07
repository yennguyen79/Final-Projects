class LineItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :cart
  validates :quantity,
    presence: true,
    numericality: {
      greate_than: 0, only_integer: true 

    }
    def name 
      food_item.name
    end
end

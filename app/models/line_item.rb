class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :food_item
end

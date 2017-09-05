class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section
  has_many :line_items, dependent: :destroy

  def fake_image_url
    
    "http://www.veganfoodquest.com/wp-content/uploads/2014/09/IMG_2672-1024x783.jpg" 
  end 

end

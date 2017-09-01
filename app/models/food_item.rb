class FoodItem < ApplicationRecord
  validates :name, :price, presence: true
  belongs_to :section
  has_many :line_items, dependent: :destroy

  def fake_image_url
   "http://www.phobinhminh.ca/wp-content/uploads/2017/03/afcce6edab8f598e4fe81426c128df4c.jpg" 
  end 

end

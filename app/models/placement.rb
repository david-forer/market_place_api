class Placement < ApplicationRecord
  after_create :decrement_product_quantity!

  def decrement_product_quantity!
    product.decrement!(:quantity, quantity)
  end

  belongs_to :order
  belongs_to :product, inverse_of: :placements
  
 
end

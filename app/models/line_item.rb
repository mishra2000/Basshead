class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  def total_price
		self.product.price * quantity
	end
end

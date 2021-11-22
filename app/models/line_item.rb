class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  def total(line_items)
    price=0
    line_items.each{|line| price=price+ (Product.where(:id=> line.product_id.to_s).first.price)*line.quantity}
    puts price
    return price
  end
end

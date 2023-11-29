class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }

  def total_price
    return 0 if product.nil? || product.price.nil? || quantity.nil?
    product.price * quantity
  end
end

class CartItem < ApplicationRecord

  belongs_to :item
  
def tax_include_price
  (item.price*1.1).round(0)
end

def subtotal
  tax_include_price*amount
end

end

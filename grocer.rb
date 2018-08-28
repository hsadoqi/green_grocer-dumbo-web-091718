def consolidate_cart(cart)
  # code here
  cart_hash = {}
  cart.each do |item|
    item.each do |name, value|
      if cart_hash[name]
        cart_hash[name][:count] += 1 
      else 
        cart_hash[name] = value
        cart_hash[name][:count] = 1 
      end 
    end 
  end
  cart_hash
end

def apply_coupons(cart, coupons)
  # code here
  if coupons[:item] == cart[name]
    cart[name][:price] = coupons[:]
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

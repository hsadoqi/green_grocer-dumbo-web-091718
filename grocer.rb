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
  coupon_cart = {}
  cart.each do |item, info|
    coupons.each do |coupon|
      if item == coupon[:item] && info[:count] >= coupon[:num]
        cart[item][:count] = cart[item][:count] - coupon[:num]
        if coupon_cart[item + "W/ COUPON"]
          coupon_cart[item + "W/ COUPON"][:count] += 1
        else 
          coupon_cart[item + "W/ COUPON"] = {:price => coupon[:cost], :clearance => cart[item][:clearance], :count => 1}
        end 
      end 
    end 
    coupon_cart[item] = info
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

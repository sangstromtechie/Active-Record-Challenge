load 'ar.rb'

products_to_update = Product.where("stock_quantity > 40")

products_to_update.each do |quantity|
  quantity.stock_quantity = quantity.stock_quantity + 1
  quantity.save
end
load 'ar.rb'
require 'faker'

all_categories = Category.all

all_categories.each do |category|
  puts "Products in category - #{category.name}:"
  all_category_products = Product.select(:name).where(category_id: category.id)
  all_category_products.each do |category_product|
    puts category_product.name
  end
end
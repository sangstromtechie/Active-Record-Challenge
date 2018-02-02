load 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

names_of_products_above_10_start_with_c = Product.select(:name, :id)
                                                 .where("price > 10")
                                                 .where("name LIKE 'c%'")

names_of_products_above_10_start_with_c.each do |products_c|
  puts products_c.name
  puts products_c.id
end

number_of_products_stock_below_5 = Product.where("stock_quantity < 5")

puts number_of_products_stock_below_5.count

find_chai = Product.find(155)

puts find_chai.category.name

beverages = Category.where(:name => 'Beverages').first

new_one = beverages.products.build(:name           => 'Iced Tea',
                                  :description    => 'All the goodness of tea, but cold.',
                                  :price          => 2,
                                  :stock_quantity => 65)

new_one.save

puts new_one.inspect

all_beverages_over_5 =  Product.select(:name)
                               .where(category_id: beverages.id)
                               .where("price > 5")

all_beverages_over_5.each do |beverage|
  puts beverage.name
end



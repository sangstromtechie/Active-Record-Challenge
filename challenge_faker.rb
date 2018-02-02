load 'ar.rb'
require 'faker'

10.times do
  new_category = Faker::Food.unique.dish
  Category.create(name: new_category)
  10.times do
    current_category = Category.where(name: new_category).first
    new_product = Faker::Food.unique.ingredient
    current_category.products.build(name: new_product,
                               description: 'Random',
                               price: 5,
                               stock_quantity: 50)
  end
end
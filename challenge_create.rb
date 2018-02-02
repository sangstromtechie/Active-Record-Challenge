require_relative 'ar.rb'

new_product = Product.new

new_product.name = 'Tide Pods'
new_product.description = 'Laundry Detergent. DO NOT CONSUME!'
new_product.price = 5
new_product.stock_quantity = 0

new_product.save
new_product.inspect

video_game = Product.new( :name           => 'Bloodborne',
                          :description    => 'Now remastered for PC!',
                          :price          => 40,
                          :stock_quantity => 50)

video_game.save
video_game.inspect

mini_wheats = Product.create( :name           => 'Mini Wheats',
                              :description    => 'Part of a balanced breakfast.',
                              :price          => 15,
                              :stock_quantity => 35)
mini_wheats.inspect

tea = Product.new( :name => 'Chai')

if (tea.save)
  puts "Chai was saved to the database products table."
  tea.inspect
else
  tea.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end
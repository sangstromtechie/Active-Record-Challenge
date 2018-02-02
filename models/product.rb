class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  #
  # Product(    id: integer,
  #           name: string,
  #    description: string,
  #          price: decimal,
  # stock_quantity: integer,
  #    category_id: integer,
  #     created_at: datetime,
  #     updated_at: datetime)

  belongs_to :category
  validates :name, uniqueness: true, length: { minimum: 4 }
  validates :description, presence: true
  validates :price, numericality: true
  validates :stock_quantity, numericality: { only_integer: true }, allow_nil: true
end
class Item < ApplicationRecord
  has_many :order_datails
  has_many :cart_items
  belongs_to :genres
  has_one_attached :image
end

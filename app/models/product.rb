class Product < ApplicationRecord
  validates :name, :category, :price, :description, :picture_url, presence: true
end

class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 200 }
  validates :price, presence: true, numericality: true
  validates :category_id, presence: true
end

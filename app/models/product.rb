class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :line_items

  validates :name, presence: true
  validates :description, length: { minimum: 10, maximum: 200 }
  validates :price, presence: true, numericality: true
  validates :category_id, presence: true

  mount_uploader :image, ImageUploader
end

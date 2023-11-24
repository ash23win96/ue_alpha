class Category < ApplicationRecord
  has_many :products
  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :description, length: { minimum: 10, maximum: 150 }
end

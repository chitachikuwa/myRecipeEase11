class Recipe < ApplicationRecord
  belongs_to :admin
  belongs_to :category
  has_one_attached :image
  
  validates :image, :title, :ingredients, :seasonings, :steps, presence: true
end

class Recipe < ApplicationRecord
  belongs_to :admin
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  has_one_attached :image
  
  validates :image, :title, :ingredients, :seasonings, :steps, presence: true
  validates :category_id, numericality: { other_than: 0 }
end

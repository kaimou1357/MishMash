class Ingredient < ApplicationRecord
  belongs_to :recipe

  validates_presence_of :name, :ingredient_type, :unit
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end

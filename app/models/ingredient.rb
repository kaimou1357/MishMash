class Ingredient < ApplicationRecord
  UNITS = %w(ounce pound gram kilogram teaspoon cup tablespoon pint quart)
  belongs_to :recipe

  validates_presence_of :name, :type
  validates :unit, inclusion: { in: UNITS }
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end

class Recipe < ApplicationRecord
  has_many :ingredients
  has_and_belongs_to_many :shopping_lists
  validates_presence_of :description
end

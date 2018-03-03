class Recipe < ApplicationRecord
  has_many :ingredients
  has_and_belongs_to_many :shopping_lists
  validates_presence_of :description
  has_attached_file :image, styles: { medium: "300x300" }, default_url: "/images/recipes/missing.png"
end

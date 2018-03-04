class Recipe < ApplicationRecord
  validates_presence_of :name
  has_many :ingredients, dependent: :destroy
  has_many :recipe_steps, dependent: :destroy
  has_and_belongs_to_many :shopping_lists, join_table: :shopping_list_recipes
  has_attached_file :image, styles: { medium: "216x256" }, default_url: "/images/recipes/missing.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg"] }
end

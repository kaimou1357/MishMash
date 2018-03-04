class RecipeStep < ApplicationRecord
  validates_presence_of :order, :text
  belongs_to :recipe
end

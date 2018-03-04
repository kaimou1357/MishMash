class ShoppingList < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :recipes, join_table: :shopping_list_recipes

  validates_presence_of :name
end

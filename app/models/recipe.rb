class Recipe < ApplicationRecord
  has_many :ingredients

  validates_presence_of :description
end

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "is invalid if it has no description" do
    recipe = create(:recipe)
    recipe.description = nil

    expect(recipe).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it { should have_attached_file(:image) }

  it "is invalid if it has no name" do
    recipe = create(:recipe)
    recipe.name = nil

    expect(recipe).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe ShoppingList, type: :model do
  it "is valid if it has no recipes" do
    shopping_list = create(:shopping_list)

    expect(shopping_list).to be_valid
  end

  it "is invalid if it does not have a name" do
    shopping_list = build(:shopping_list)
    shopping_list.name = nil

    expect(shopping_list).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  subject { build(:ingredient) }
  it "is not valid without a name" do
    subject.name = nil

    expect(subject).to_not be_valid
  end

  it "is not valid with a negative quantity" do
    subject.quantity = -0.6

    expect(subject).to_not be_valid
  end

  it "must have a legitimate unit" do
    subject.unit = "cat"

    expect(subject).to_not be_valid
  end

  it "must have a type" do
    subject.type = nil

    expect(subject).to_not be_valid
  end

  it "must have a perishable status within bounds" do
    subject.perishable_status = 10

    expect(subject).to be_valid
  end
end

require 'faker'

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password "password"
    password_confirmation "password"
  end

  factory :profile do
    user
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
  end

  factory :recipe do
    name { Faker::Food.dish }
    duration { Faker::Number.number(2) }
    servings { Faker::Number.number(1) }
    calories { Faker::Number.number(3) }
    description { Faker::Food.description }
    after(:create) do |recipe|
      create_list(:ingredient, 5, recipe: recipe)
    end
  end

  factory :ingredient do
    recipe
    type "meat"
    name { Faker::Food.ingredient }
    unit "ounce"
    quantity { Faker::Number.number(1) }
    perishable_status 3
  end

  factory :shopping_list do
    user
    name "Test Shopping List"
    trait :with_recipes do
      after(:create) do |list|
        create_list(:recipe, 5, shopping_list: list)
      end
    end
  end
end

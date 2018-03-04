module Recipes
  class RecipeImporter
    def self.process(recipes)
      recipes.each do |recipe|
        created_recipe = Recipe.create(
          name: recipe["name"],
          servings: 1,
          calories: recipe["calories"],
          image: URI.parse(recipe["image"])
        )

        recipe_steps = recipe["directions"]
        recipe_steps.each do |recipe_step|
          RecipeStep.create(order: recipe_step["step"], text: recipe_step["direction"], recipe: created_recipe)
        end

        recipe_ingredients = recipe["ingredients"]
        recipe_ingredients.each do |ingredient|
          Ingredient.create(
            name: ingredient["ingredient"],
            quantity: ingredient["amount"],
            unit: ingredient["unit"],
            ingredient_type: ingredient["labels"].first,
            recipe: created_recipe,
            perishable_status: 0
          )
        end
      end
    end
  end
end

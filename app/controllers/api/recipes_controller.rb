class Api::RecipesController < Api::ApplicationController
  def create
    Recipes::RecipeImporter.process(create_recipe_params)
    render json: { success: true }
  end

  private

  def create_recipe_params
    params.require(:recipes)
  end
end

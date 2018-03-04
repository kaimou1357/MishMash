class RecipeImportJob < ApplicationJob
  queue_as :default

  def perform(recipes)
    Recipes::RecipeImporter.process(JSON.parse(recipes))
  end
end

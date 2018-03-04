class Api::RecipesController < Api::ApplicationController
  def create
    RecipeImportJob.perform_later(params[:recipes].to_json)
    render json: { success: true }
  end
end

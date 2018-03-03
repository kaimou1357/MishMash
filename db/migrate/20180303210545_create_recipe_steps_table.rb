class CreateRecipeStepsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :recipe_steps_tables do |t|
      t.integer :order, null: false
      t.string :text, null: false
      t.belongs_to :recipe, index: true
    end
  end
end

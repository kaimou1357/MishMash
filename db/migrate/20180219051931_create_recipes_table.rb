class CreateRecipesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :duration, null: false, default: 0
      t.integer :servings, null: false, default: 1
      t.integer :calories, null: false, default: 0
      t.string :description, null: false
    end
  end
end

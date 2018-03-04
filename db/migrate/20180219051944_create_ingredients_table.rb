class CreateIngredientsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.float :quantity, null: false
      t.string :unit, null: false
      t.string :ingredient_type, null: false
      t.integer :perishable_status, null: false
      t.belongs_to :recipe, index: true
      t.timestamps
    end
  end
end

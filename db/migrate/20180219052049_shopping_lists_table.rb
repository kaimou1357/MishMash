class ShoppingListsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_lists do |t|
      t.belongs_to :user, index: true
      t.string :name, null: false
      t.timestamps
    end
  end
end

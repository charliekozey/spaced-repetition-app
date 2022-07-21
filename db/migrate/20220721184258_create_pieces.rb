class CreatePieces < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :category
      t.float :rating
      t.float :seller_rating
      t.float :price
      t.boolean :is_selected

      t.timestamps
    end
  end
end

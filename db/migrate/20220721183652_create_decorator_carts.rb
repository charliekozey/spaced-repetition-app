class CreateDecoratorCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :decorator_carts do |t|

      t.timestamps
    end
  end
end

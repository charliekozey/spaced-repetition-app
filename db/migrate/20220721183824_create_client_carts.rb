class CreateClientCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :client_carts do |t|

      t.timestamps
    end
  end
end

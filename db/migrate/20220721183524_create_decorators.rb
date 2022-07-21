class CreateDecorators < ActiveRecord::Migration[6.1]
  def change
    create_table :decorators do |t|
      t.string :display_name
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end

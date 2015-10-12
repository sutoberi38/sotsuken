class CreateUserAs < ActiveRecord::Migration
  def change
    create_table :user_as do |t|
      t.string :userid
      t.string :password
      t.string :onetime

      t.timestamps null: false
    end
  end
end

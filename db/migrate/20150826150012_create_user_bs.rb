class CreateUserBs < ActiveRecord::Migration
  def change
    create_table :user_bs do |t|
      t.string :userid
      t.string :password
      t.string :onetime

      t.timestamps null: false
    end
  end
end

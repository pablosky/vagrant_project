class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.boolean :admin
      t.integer :login_count
      t.boolean :deleted
      t.datetime :last_sign_in_at

      t.timestamps null: false
    end
  end
end

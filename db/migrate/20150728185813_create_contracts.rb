class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.references :user, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.string :currency
      t.integer :amount
      t.string :contact
      t.string :contact_email
      t.string :contact_phone
      t.string :country

      t.timestamps null: false
    end
  end
end

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_contact_phone
      t.string :company_email
      t.string :company_country
      t.string :company_contact_name

      t.timestamps null: false
    end
  end
end

class AddDeletedAtToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :deleted_at, :datetime
    add_index :invoices, :deleted_at
  end
end

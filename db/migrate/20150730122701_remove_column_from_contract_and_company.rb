class RemoveColumnFromContractAndCompany < ActiveRecord::Migration
  def change
  	remove_column :contracts, :deleted

  	remove_column :companies, :deleted
  end
end

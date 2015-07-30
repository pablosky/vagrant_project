class AddReferencesToContract < ActiveRecord::Migration
  def change
    add_reference :contracts, :company, index: true, foreign_key: true
  end
end

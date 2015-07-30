class Contract < ActiveRecord::Base
  acts_as_paranoid
  belongs_to :user
  belongs_to :company
  has_many :invoices
end

class TaxRegime < ActiveRecord::Base
  has_many :einvoices
end

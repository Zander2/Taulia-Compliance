class Einvoice < ActiveRecord::Base
  belongs_to :tax_regime
  belongs_to :country
end

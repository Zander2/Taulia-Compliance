class Country < ActiveRecord::Base
  has_many :einvoices
  has_many :taulia_einvoices
end

class CreateTauliaEinvoices < ActiveRecord::Migration
  def change
    create_table :taulia_einvoices do |t|
      t.integer :country_id
      t.boolean :taulia_compliante

      t.timestamps null: false
    end
  end
end

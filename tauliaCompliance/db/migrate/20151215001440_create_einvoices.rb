class CreateEinvoices < ActiveRecord::Migration
  def change
    create_table :einvoices do |t|
      t.integer :country_id
      t.integer :regime_id
      t.string :signed_validated
      t.string :compliance_footer
      t.string :footer_note
      t.string :archv_tw
      t.string :taulia_pdf
      t.text :suppliers_responsibilities
      t.text :buyer_responsibilities

      t.timestamps null: false
    end
  end
end

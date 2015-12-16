class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :iso_code
      t.string :name_en
      t.string :name_local
      t.string :country_flag
      t.string :regime_type
      t.string :signed_validated
      t.string :compliance_footer
      t.string :footer_note
      t.string :archv_tw
      t.string :taulia_pdf
      t.text :suppliers_responsibilities
      t.text :buyer_responsibilities
      t.boolean :taulia_compliante

      t.timestamps null: false
    end
  end
end

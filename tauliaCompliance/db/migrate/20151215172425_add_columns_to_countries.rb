class AddColumnsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :regime_type, :string
    add_column :countries, :signed_validated, :string
    add_column :countries, :compliance_footer, :string
    add_column :countries, :footer_note, :string
    add_column :countries, :archv_tw, :string
    add_column :countries, :taulia_pdf, :string
    add_column :countries, :suppliers_responsibilities, :text
    add_column :countries, :buyer_responsibilities, :text
    add_column :countries, :taulia_compliante, :string
  end
end

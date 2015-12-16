class CreateTaxRegimes < ActiveRecord::Migration
  def change
    create_table :tax_regimes do |t|
      t.string :regime_type
      t.text :regime_description

      t.timestamps null: false
    end
  end
end

class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|

      t.string :role_type
      t.text :description

      t.timestamps null: false
    end
  end
end

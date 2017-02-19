class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.integer :company_id

      t.timestamps null: false
    end
  end
end

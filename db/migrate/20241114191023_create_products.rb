class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :stock
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

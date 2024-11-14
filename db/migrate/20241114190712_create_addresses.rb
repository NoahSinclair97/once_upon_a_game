class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :unit
      t.string :city
      t.string :province
      t.string :postal_code

      t.timestamps
    end
  end
end

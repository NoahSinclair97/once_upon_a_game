class CreateCards < ActiveRecord::Migration[7.2]
  def change
    create_table :cards do |t|
      t.string :card_number
      t.date :exp_date
      t.string :cvv

      t.timestamps
    end
  end
end
